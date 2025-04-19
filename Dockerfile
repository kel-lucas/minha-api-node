# Usar uma imagem base Node.js oficial
FROM node:18-alpine

# Definir o diretório de trabalho dentro do container
WORKDIR /app

# Copiar os arquivos package.json e package-lock.json
COPY package*.json ./

# Instalar as dependencias 
RUN npm install

# Copiar o restante dos arquivos da aplicação
COPY . .

# Explicar qual porta será exposta pelo container
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["node", "index.js"]

