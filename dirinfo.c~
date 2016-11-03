#include <stdio.h>
#include <stdlib.h>
#include <dirent.h>

void ls(DIR *str){
  struct dirent *dp;
  while(dp = readdir(str)){
    printf("%s",dp->d_name);
    if(dp->d_type == 4){
      printf("(directory)");
    }
    printf("\n");
  }
}

void main(){
  DIR * stream = opendir(".");
  ls(stream);
  closedir(stream);
}
