#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

char charset[] = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
size_t pass_len = 20;

void acces_granted() {
  puts("Clave Verificada Acceso concedido :-)\n");
  exit(0);
}

void wrong_password(){
  puts("Clave erronea >:-( ");
}

char random_char(int index) {
  return charset[index];
}

void create_password(char *str){
  srand(time(NULL));
  
  int i, index;
  for (i = 0; i< pass_len; i++){
    index = rand() % 62;
    str[i] = random_char(index);
  }
  str[i] = '\0';
}

int main() {
  char user_input[pass_len];
  char pass[pass_len];

  puts("Ingrese clave de Activacion\n");
  scanf("%20s", user_input);

  create_password(pass);

  int cmp = strcmp(user_input, pass);

  if (cmp == 0 ) {
    acces_granted();
  }

  wrong_password();

  return 0;
}
