pip install notebook
echo -e "e\ne" | jupyter notebook password && jupyter notebook --ip=0.0.0.0 --port=8000 --allow-root
