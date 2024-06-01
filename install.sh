echo -e "Installing necessary packages please wait...\n"
sudo apt update && sudo apt install -y wslu
source .env
echo -e "\nInitializing Wordpress Service...\n"
echo -e "\nBuilding the docker image please wait...\n"
echo -e "\nRunning Docker compose pull\n"
docker compose -f docker-compose.yml pull
echo -e "\nRunning Docker compose up\n"
docker compose -f docker-compose.yml up -d
echo -e "\nServices running!!!\n"
xdg-open http://localhost:${WORDPRESS_PORT}
