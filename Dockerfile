# Alpine tabanlı Python imajElbette! Alpine Linux tabanlı bir Docker imajı kullanarak hem Python hem de npm yüklemek için aşağıdaki Dockerfile örneğini kullanabilirsiniz:```dockerfile
# Alpine tabanlı Python imajı kullanarak başlıyoruz
FROM python:3.9-alpine

# Çalışma dizinini oluştur ve ayarla
WORKDIR /app

# Gerekli bağımlılıkları yükle
RUN apk add --no-cache --virtual .build-deps \
        gcc \
        musl-dev \
        libffi-dev \
        openssl-dev \
        python3-dev \
    && apk add --no-cache \
        nodejs \
        npm

# Python bağımlılıklarını yükle
COPY requirements.txt .
RUN pip install notebook --break-system-packages

# Uygulama kodunu kopyala
COPY . .

# Varsayılan çalışma komutu
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=443", "--allow-root"]
