# Temel imaj olarak Fedora kullan
FROM fedora:latest

# Gerekli paketleri yükle
RUN dnf install -y \
    python3 \
    python3-pip \
    && dnf clean all

# Jupyter Notebook ve diğer gerekli Python paketlerini yükle
RUN pip3 install --no-cache-dir \
    jupyter

# Çalışma dizinini oluştur ve ayarla
WORKDIR /workspace

COPY . /workspace

# Jupyter Notebook'un 8888 portunu aç
EXPOSE 443

# Jupyter Notebook'u başlat
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=443", "--no-browser", "--allow-root"]
