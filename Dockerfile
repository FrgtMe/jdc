# Alpine Linux temel görüntüsünü kullan
FROM alpine:latest

# Gerekli paketleri yükle
RUN apk add --no-cache \
    python3 \
    py3-pip \
    jupyter-notebook

# Çalışma dizinini /app olarak ayarla
WORKDIR /app

# Jupyter Notebook'u çalıştırmak için Python betiklerini ekle
COPY . .

# Jupyter Notebook için çalıştırılacak komutu belirle
CMD ["python3", "/app/jup.py"]
