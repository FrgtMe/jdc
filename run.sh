cat pip.txt > ~/.config/pip/pip.conf
pip3 install selenium notebook --break-system-packages
echo -e "e\ne" | jupyter notebook password 
jupyter notebook --ip=0.0.0.0 --port=443 --allow-root
