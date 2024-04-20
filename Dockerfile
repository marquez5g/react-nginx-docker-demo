#ALERTA: Si agrregaste output: "export" en el archivo next.config.mjs borrarlo antes de ejecutar este Dockerfile

#Usa imagen liviana con node
FROM node:alpine
#Cea la carpeta app y entra a ella
WORKDIR /app
#Copia todo el poyecto a la carpeta actual de la imagen
COPY . .
#Instala las dependencias necesarias para contruir y correr el proyecto
RUN npm install && npm run build
#Define el comando a corre para serrvi el proyecto en el servidor de next.js
CMD [ "npm", "run", "start" ]

#Construir imagen de esta manerra: docker build -f .\Dockerfile -t react-app .
#Correr contenedor así: docker run -d --name react-app-contenedor -p 8080:80 react-app
#Probar en localhost:3000