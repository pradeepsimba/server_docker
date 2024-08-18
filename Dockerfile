FROM ubuntu

# Install wget and unzip
RUN apt-get update && apt-get install -y wget unzip

# Download the file
RUN wget https://github.com/pradeepsimba/runtime-image/releases/download/rfrefr/image.zip

# Unzip the file
RUN unzip image.zip

# Change directory to image/bin
WORKDIR image/bin

# Run the shell script
CMD ["./algo"]
