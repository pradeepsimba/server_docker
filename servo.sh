#!/bin/bash
# Build the Docker image once
docker build -t myimage .

# Run the container 20 times
for i in {1..20}
do
   docker run --name mycontainer_$i myimage
   # docker rm mycontainer_$i
done
