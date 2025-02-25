FROM eclipse-temurin:17

RUN   apt-get update \
    ; apt install -y ant 
  

COPY DSpace-dspace-8.1/dspace/target/dspace-installer/ /dspace-installer/

WORKDIR /dspace-installer
RUN ant fresh_install

