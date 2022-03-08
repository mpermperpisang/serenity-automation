FROM node:14

WORKDIR /project/serenity-automation

COPY package.json package-lock.json ./
RUN npm ci

COPY . .
CMD ["npm", "run", "sample"]
