#import the MybbDB into the DB in Database container
docker exec -i xo-mybb-db-prod mysql -u 911labs --password=911labs mybb < /home/mybb/docker/db/db-data/mybbdb.sql

