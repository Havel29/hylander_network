screen_name="vanilla"
echo "Restartando $screen_name..."
screen -S $screen_name -X stuff "stop^M"  #Digita il comando stop all'interno del terminale del server
sleep 10  #Attendi la terminazione del server
screen -S $screen_name -X stuff "./start_script.sh^M"  #Fai ripartire il server (cambiate il nome a seconda del file shell che usate per startare il server)
