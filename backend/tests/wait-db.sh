#!/bin/bash

res=""
while [[ $res != *"1 row"* ]];do
  echo "Waiting for database connection..."
  # wait for 5 seconds before check again
  sleep 2
  res=`docker exec XXXXX psql -U XXXUSER XXXDATABASE -c 'SELECT count(*) FROM account limit 1;'`
done
echo "DATABASE SUCCESSFULLY CONNECTED"
sleep 20
###