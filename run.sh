pip3 install -r requirements.txt
echo -e "e\ne" | jupyter notebook password && jupyter notebook --ip=0.0.0.0 --port=443 --allow-root
