FROM python:3.10.6-slim-buster

# تحديد مجلد العمل بشكل صحيح
WORKDIR /app

# نسخ جميع الملفات إلى داخل الحاوية
COPY . .

# تثبيت المتطلبات
RUN pip3 install --upgrade pip && pip3 install -r requirements.txt

# أمر تشغيل البوت
CMD ["python3", "main.py"]
