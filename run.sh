wget https://www.python.org/ftp/python/3.10.5/Python-3.10.5.tgz
tar -xvzf Python-3.10.5.tgz
cd Python-3.10.5.tgz
./configure --prefix=$HOME/python3.10.5
make
sudo make install
curl https://bootstrap.pypa.io/get-pip.py > pip.py
python3.10.5 pip.py
pip install notebook
echo -e "e\ne" | jupyter notebook password && jupyter notebook --ip=0.0.0.0 --port=443 --allow-root
