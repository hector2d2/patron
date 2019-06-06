void main(){
  int n=5,i,j,j2,aux_j,mitad;
  List<List<String>> matriz = new List<List<String>>();
  for (i = 0; i < n; i++) {
    List<String> list = new List<String>();
    for (j = 0; j < n; j++) {
      list.add("o");
    }
    matriz.add(list);
  }
  i=0;j=0;j2=0;
  mitad=(n/2.floor()).toInt();
  if(n%2==0){
    j=mitad-1;
    j2=j+1;
    while(true){
      while(j>-1){//la primera mitad del diamante par
        rellenar_matriz(matriz, i, j, aux_j, j2);
        i++;
        j--;
        j2++;
      }
      j2--;
      j++;
      rellenar_matriz(matriz, i, j, aux_j, j2);
      i++;
      j++;
      j2--;
      while(j<mitad){//la segunda mitad del diamante par
        rellenar_matriz(matriz, i, j, aux_j, j2);
        j++;
        i++;
        j2--;
      }
      break;
    }
  }else{
    j=mitad;
    j2=j;
    while(true){
      while(j>-1){//la primera mitad del diamante impar
        matriz[i][j]="v";
        rellenar_matriz(matriz, i, j, aux_j, j2);
        i++;
        j--;
        j2++;
      }
      j++;j2--;
      while(j<mitad){//la segunda mitad del diamante impar
        j++;
        j2--;
        rellenar_matriz(matriz, i, j, aux_j, j2);
        i++;
      }break;
    }
  }
  imprimir(n, i, j, matriz);

  
  //print(matrix[2][4]);
}
void imprimir(int n,int i,int j,List<List<String>> matriz){
  var imprimir_matriz="";
  for (i = 0; i < n; i++) {
    for (j = 0; j < n; j++) {
      imprimir_matriz+=matriz[i][j]+" ";
    }
  imprimir_matriz+='\n';
  }
  print(imprimir_matriz);
}

void rellenar_matriz(List<List<String>> matriz,int i,int j,int aux_j,int j2){
  matriz[i][j]="v";
    for(aux_j=j+1;aux_j<j2;aux_j++){
      matriz[i][aux_j]="x";
    }
    if(j!=j2)matriz[i][j2]="v";
}