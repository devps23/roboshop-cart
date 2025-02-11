if [ -z "$REDIS_HOST" ]; then
  echo Environment REDIS_HOST is missing
  exit 1
fi

if [ -z "$CATALOGUE_HOST" ]; then
  echo Environment CATALOGUE_HOST is missing
  exit 1
fi

if [ -z "$CATALOGUE_PORT" ]; then
  echo Environment CATALOGUE_PORT is missing
  exit 1
fi

node /app/server.js

