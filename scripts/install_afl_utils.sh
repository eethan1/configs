#! /usr/bin/zsh


if [ ! -d  afl-utils ]; then
	git clone https://github.com/rc0r/afl-utils.git
fi

cd afl-utils/
virtualenv -p python3 env
act
python setup.py install
python setup.py test
deact
cd ..

