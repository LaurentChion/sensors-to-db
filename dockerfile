FROM node:6.9
LABEL maintainer Laurent

# Emplacement de l'application
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Récupération des fichiers sources
COPY . /usr/src/app

# Installation des dépendances
RUN npm i

CMD node sensors-to-db.js
