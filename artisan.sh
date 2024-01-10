#!/bin/bash
num_variables=$#
firma= echo -e \\e[35m"
#      ________      .__.__  .__            
#     /  _____/ __ __|__|  | |  |   ____  
#    /   \  ___|  |  \  |  | |  | _/ __ \ 
#    \    \_\  \  |  /  |  |_|  |_\  ___/ 
#     \______  /____/|__|____/____/\___  >
#            \/                        \/ 
"\\e[0m

if [ $num_variables -lt 1 ] 
then
    echo -e "\n"
    echo -e \\e[31m'Error: '\\e[0m'param1 comando artisan requerido.'
    echo -e "\n"
    echo 'Número de parámetros recibidos: '  $num_variables
    exit 1
fi

if [ $num_variables = 1 ]
then
    $firma
    echo -e \\e[32m'run sudo docker compose exec laravelDemo php artisan' $1\\e[0m
    echo -e "\n"
    sudo docker compose exec laravelDemo php artisan $1
    exit 0
fi

$firma
echo -e "\n"
echo -e \\e[32m'run sudo docker compose exec laravelDemo php artisan' $1 $2\\e[32m
echo -e "\n"
sudo docker compose exec laravelDemo php artisan $1 $2
exit 0