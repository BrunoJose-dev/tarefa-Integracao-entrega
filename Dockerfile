# Use a imagem Node.js oficial como base
FROM node:18

# Crie o diretório de trabalho
WORKDIR /usr/src/app

# Copie os arquivos de configuração
COPY package*.json ./

# Instale as dependências
RUN npm install

# Copie o código da aplicação
COPY . .

# Exponha a porta que o app usa
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["npm", "start"]