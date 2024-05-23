echo -e "Initializing Wordpress Service..."
docker build -t wordpress-updated:1.0 .
echo -e "Running Docker compose pull\n"
docker compose -f wordpress-compose.yaml pull
echo -e "Running Docker compose up\n"
docker compose -f wordpress-compose.yaml up -d
echo -e "Services running!!!\n"