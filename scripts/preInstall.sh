#set env vars
set -o allexport; source .env; set +o allexport;

mkdir -p ./redis
mkdir -p ./config
chown -R 1000:1000 ./redis
chown -R 1000:1000 ./config

newArgonPassTemp=$(docker run authelia/authelia:latest authelia hash-password $ADMIN_PASSWORD)
newArgonPass=${newArgonPassTemp:8:104}
JWT=${JWT:-`openssl rand -hex 16`}
SECRET_TO_CHANGE=${SECRET_TO_CHANGE:-`openssl rand -hex 16`}
ENCRYPTION_TO_CHANGE=${ENCRYPTION_TO_CHANGE:-`openssl rand -hex 32`}


sed -i "s|EMAIL_TO_CHANGE|$ADMIN_EMAIL|g" ./config/users_database.yml
sed -i "s|ARGON_PASSWORD|$newArgonPass|g" ./config/users_database.yml

sed -i "s|DOMAIN_TO_CHANGE|$DOMAIN|g" ./config/configuration.yml
sed -i "s|JWT_TO_CHANGE|$JWT|g" ./config/configuration.yml
sed -i "s|SECRET_TO_CHANGE|$SECRET_TO_CHANGE|g" ./config/configuration.yml
sed -i "s|ENCRYPTION_TO_CHANGE|$ENCRYPTION_TO_CHANGE|g" ./config/configuration.yml
sed -i "s|SENDER_TO_CHANGE|$SMTP_FROM_EMAIL|g" ./config/configuration.yml
sed -i "s|EMAIL_TO_CHANGE|$ADMIN_EMAIL|g" ./config/configuration.yml