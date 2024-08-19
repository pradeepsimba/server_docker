#!/bin/bash
# Build the Docker image once
docker build -t serimage .

# Run the container 20 times in detached mode
for i in {1..20}
do
   docker run -d --name sercontainer_$i serimage
   # docker rm mycontainer_$i
done
