TARGET=_site
mkdir $TARGET
echo '' | sudo -S apt-get install svn

snap

cat /etc/os-release

svn co http://svn.code.sf.net/p/farmanager/code/trunk/enc enc

cd $TARGET
lua ../enc/tools/lua/scripts/tp2hh.lua ../enc/enc_lua/luafar_manual.tsi tsi ../enc/tools/lua/templates/api.tem
