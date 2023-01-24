#set env vars
#set -o allexport; source .env; set +o allexport;

mkdir -p ./redis
mkdir -p ./authelia
chown -R 1000:1000 ./redis
chown -R 1000:1000 ./authelia
