echo -e "Initializing Wordpress Service...\n"
echo -e "Building the docker image please wait...\n"
docker build -t wordpress-updated:1.0 .
echo -e "\nRunning Docker compose pull\n"
docker compose -f docker-compose.yml pull
echo -e "\nRunning Docker compose up\n"
docker compose -f docker-compose.yml up -d
echo -e "\nServices running!!!\n"