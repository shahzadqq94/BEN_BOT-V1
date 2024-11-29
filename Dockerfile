FROM node:18-slim

# نصب ابزارهای ضروری
RUN apt-get update && apt-get install -y git

# تنظیم دایرکتوری کاری
WORKDIR /app

# کپی کردن فایل‌های package.json و package-lock.json
COPY package*.json ./

# نصب پکیج‌ها
RUN npm install --production

# کپی پروژه
COPY . .

# تنظیم متغیرهای محیطی
ENV NODE_ENV=production
ENV PORT=3000

# باز کردن پورت
EXPOSE 3000

# اجرای برنامه
CMD ["npm", "start"]
