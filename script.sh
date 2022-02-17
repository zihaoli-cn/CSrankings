apt-get update -y
apt-get install -y libxml2-utils npm python-lxml basex pigz 
npm install -g typescript google-closure-compiler

pip3 install xmltodict

git clone --depth 1 https://github.com/zihaoli-cn/CSrankings.git 

cs CSrankings && make update-dblp && make -j && cd ../ && tar -cvf - CSrankings | pigz --best -p 30 > CSrankings.tgz

