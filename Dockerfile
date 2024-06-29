FROM jupyter/scipy-notebook

# Varsayılan şifreyi ayarlayın
ENV JUPYTER_PASSWORD=your_password

# Jupyter Notebook'u yapılandırma dosyasını güncelleyin
COPY jupyter_notebook_config.py /root/.jupyter

# Jupyter Notebook'un çalıştığı portu açın
EXPOSE 8888

# Jupyter Notebook'u çalıştırın
CMD ["jupyter", "notebook", "--allow-root", "--ip=0.0.0.0", "--no-browser"]
