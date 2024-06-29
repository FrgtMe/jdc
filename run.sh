pip3 install notebook selenium
echo -e "e\ne" | jupyter notebook password 
pm2 start "jupyter notebook --ip=0.0.0.0 --port=443 --allow-root"
