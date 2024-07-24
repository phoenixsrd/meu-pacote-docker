# Usar A Imagem Base Do Node.js
FROM node:14

# Criar Diretório De Trabalho
WORKDIR /usr/src/app

# Copiar package.json E package-lock.json
COPY package*.json ./

# Instalar Dependências
RUN npm install

# Copiar O Restante Dos Arquivos Da Aplicação
COPY . .

# Porta Que A Aplicação Vai Rodar
EXPOSE 8080

# Comando Para Iniciar A Aplicação
CMD [ "node", "index.js" ]
