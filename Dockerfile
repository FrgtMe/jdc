FROM jupyter/scipy-notebook


# Jupyter Notebook'un çalıştığı portu açın
EXPOSE 8888

# Jupyter Notebook'u çalıştırın
CMD ["jupyter", "notebook", "--allow-root", "--ip=0.0.0.0", "--no-browser"]
