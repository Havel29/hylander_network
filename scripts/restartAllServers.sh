#!/bin/bash

#Cambiate i nomi inserendo i nomi degli screen
servers=("bungee" "hub" "survival")


restart_server() {
    screen_name=$1
    echo "Restartando $screen_name..."
    screen -S $screen_name -X stuff "stop^M"  #Digita il comando stop all'interno del terminale del server
    sleep 10  #Attendi la terminazione del server
    screen -S $screen_name -X stuff "./start_script.sh^M"  #Fai ripartire il server (cambiate il nome a seconda del file shell che usate per startare il server)
}

#Ripeti per tutti i server
for server in "${servers[@]}"; do
    restart_server $server
done

echo "Tutti i server sono stati riavviati correttamente."
