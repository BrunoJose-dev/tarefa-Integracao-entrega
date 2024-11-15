# Usa uma imagem base oficial do Node.js
FROM node:18-alpine

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia o package.json e package-lock.json para instalar as dependências
COPY package*.json ./

# Instala as dependências
RUN npm install

# Copia o restante do código da aplicação
COPY . .

# Compila ou prepara a aplicação (ajuste conforme necessário)
RUN npm run build  # Remova ou ajuste este comando se sua aplicação não precisar de build

# Define a variável de ambiente para a porta que a aplicação usará
ENV PORT=8084

# Expõe a porta que a aplicação usará
EXPOSE 8084

# Define o comando para iniciar a aplicação
CMD ["npm", "start"]
