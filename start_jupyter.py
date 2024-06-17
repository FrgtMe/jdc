import subprocess

# Jupyter Notebook'u başlat
subprocess.run(["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser"])
