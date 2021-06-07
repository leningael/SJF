#include <stdio.h>
#include <string.h>

void ordenamientoLlegada(int duraciones[], int llegadas[], int num, char IDs[num][3]);
void ordenamientoDuracion(int duraciones[], int llegadas[], int num, char IDs[num][3], int comp, int inicio);
int main() {
    int num;
    printf("Ingrese el numero de procesos\n");
    scanf("%d", &num);
    char IDs[num][3];
    int duraciones[num];
    int llegadas[num];
    int tiemposEspera[num];
    int tiemposTotales[num];
    double totalTE = 0;
    double totalTT = 0;
    double promedioTE = 0;
    double promedioTT = 0;
    int fin = 0;
    int finant = 0;

    for(int i = 0; i<num; i++){
        printf("Ingrese el identificador del proceso %d\n", (i+1));
        scanf("%s", IDs[i]);
        printf("Ingrese la duracion del proceso %s\n", IDs[i]);
        scanf("%d", &duraciones[i]);
        printf("Ingrese la llegada del proceso %s\n", IDs[i]);
        scanf("%d", &llegadas[i]);
    }
    ordenamientoLlegada(duraciones, llegadas, num, IDs);
    for(int i = 0; i<num; i++){
        if(i==0){
            ordenamientoDuracion(duraciones, llegadas, num, IDs, llegadas[i], i);
            tiemposEspera[i] = 0;
            fin = llegadas[i] + duraciones[i];
        }else{
            ordenamientoDuracion(duraciones, llegadas, num, IDs, fin, i);
            tiemposEspera[i] = fin - llegadas[i];
            finant = fin;
            fin = finant + duraciones[i];
        }
        tiemposTotales[i]=tiemposEspera[i]+duraciones[i];
        totalTE = totalTE + (double)tiemposEspera[i];
        totalTT = totalTT + (double)tiemposTotales[i];
    }
    promedioTE = totalTE/(double)num;
    promedioTT = totalTT/(double)num;
    for(int i = 0; i<num; i++){
        printf("%s Duracion: %d Llegada: %d TiempoE: %d TiempoT: %d\n", IDs[i], duraciones[i], llegadas[i], tiemposEspera[i], tiemposTotales[i]);
    }
    printf("Totales Tiempo de espera: %.1f\n", totalTE);
    printf("Totales Tiempo total: %.1f\n", totalTT);
    printf("Promedio Tiempo de espera: %.1f\n", promedioTE);
    printf("Promedio Tiempo total: %.1f\n", promedioTT);
    return 0;
}
void ordenamientoLlegada(int duraciones[], int llegadas[], int num, char IDs[num][3]){
    int aux;
    char idTemp[3];
    for(int i = 0; i < num; i++){
        for(int j = i; j < num; j++){
            if(llegadas[i]>llegadas[j]){
                aux = llegadas[j];
                llegadas[j] = llegadas[i];
                llegadas[i] = aux;
                aux = duraciones[j];
                duraciones[j] = duraciones[i];
                duraciones[i] = aux;
                strcpy(idTemp, IDs[j]);
                strcpy(IDs[j], IDs[i]);
                strcpy(IDs[i], idTemp);
            }
        }
    }
}

void ordenamientoDuracion(int duraciones[], int llegadas[], int num, char IDs[num][3], int comp, int inicio){
    int aux;
    char idTemp[3];
    int cant = 0;

    for(int i = 0; i<num; i++) {
        if(llegadas[i]<=comp){
            cant++;
        }
    }
    for(int i = inicio; i < cant; i++){
        for(int j = i; j < cant; j++){
            if(duraciones[i]>duraciones[j]){
                aux = llegadas[j];
                llegadas[j] = llegadas[i];
                llegadas[i] = aux;
                aux = duraciones[j];
                duraciones[j] = duraciones[i];
                duraciones[i] = aux;
                strcpy(idTemp, IDs[j]);
                strcpy(IDs[j], IDs[i]);
                strcpy(IDs[i], idTemp);
            }
        }
    }
}

