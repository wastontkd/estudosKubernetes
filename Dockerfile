#começa com uma imagem de Node.js 10 (LTS) * 1
FROM node:10

#especifica o diretorio da imagem no qual todos os comandos serão executados * 2
WORKDIR /usr/src/app

#copia os arquivos do pacote e instala as dependencias * 3
COPY package*.json ./
RUN npm install express
RUN npm install
 
#copia todos os arquivos para imagem * 4
COPY . .

#comando default para iniciar o container * 5
CMD ["npm", "start"]
 