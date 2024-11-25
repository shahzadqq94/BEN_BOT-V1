# استفاده از تصویر پایه Node.js
FROM node:18-slim

# تنظیم دایرکتوری کاری
WORKDIR /app

# کپی کردن فایل‌های package.json و package-lock.json (در صورت وجود)
COPY package*.json ./

# install
RUN npm install --production

# copy project
COPY . .

# setup bot
ENV NODE_ENV=production
ENV PORT=3000

# open port
EXPOSE 3000

# start app
CMD ["npm", "start"]