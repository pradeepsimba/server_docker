docker container prune && docker stop $(docker ps -q) && docker rm -f $(docker ps -q)
