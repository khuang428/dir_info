#include <stdio.h>
#include <stdlib.h>
#include <dirent.h>
#include <sys/stat.h>

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

int totalsize(DIR *str){
  struct stat *s = (struct stat *)malloc(sizeof(struct stat));
  struct dirent *dp;
  int size = 0;
  while(dp = readdir(str)){
    size += s->st_size;
  }
  return size;
}

void main(){
  DIR * stream = opendir("/");
  printf("Total Size: %d\n",totalsize(stream));
  ls(stream);
  closedir(stream);
}
