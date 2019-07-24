#! /usr/bin/zsh


if [ ! -d  afl-utils ]; then
	git clone https://github.com/rc0r/afl-utils.git
fi

cd afl-utils/
virtualenv -p python3 env
. env/bin/activate
python setup.py install
python setup.py test
deactivate
cd ..

