String[] Sequence1 = {"G", "A", "A", "T", "T", "C", "A", "G", "T", "T","A"};
String[] Sequence2 = {"G", "G", "A", "T", "C", "G", "A"};
int [][] values = new int [Sequence1.length + 1][Sequence2.length + 1];
int M;
int match;
int vert;
int horizontal;
int diag;
int gap;

for (int a = 0; a < Sequence1.length; a++){
   values[a][0] = 0;
}

for (int b = 0; b < Sequence2.length; b++){
  values[0][b] = 0;
}

for (int d = 1; d < Sequence2.length + 1; d++){
  for(int c = 1; c < Sequence1.length + 1; c++){
    if (Sequence1[c-1].equals(Sequence2[d-1])){
       match = 1; 
    }
    else match = 0;
    
    if((Sequence1[c-1] == "") || (Sequence2[d-1] == "")){
      gap = 1;
    }
    else gap = 0;
    
    vert = values[c][d-1];
    horizontal = values [c-1][d];
    diag = values[c-1][d-1];
    
    M = max(diag + match,vert, horizontal);
    values[c][d] = M;
  }
}
for (int e = 0; e < Sequence2.length + 1; e++){
  for (int f = 0; f < values.length; f++){
  print(values[f][e]);
  
  }
  println("");
}

