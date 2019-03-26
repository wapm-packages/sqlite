# Download and compile sqlite3 to web assembly
YEAR=2019
VERSION=3270200
SQLITE_PATH=sqlite-autoconf-$VERSION

echo "Downloading sqlite source"
wget https://www.sqlite.org/$YEAR/$SQLITE_PATH.tar.gz

tar xf $SQLITE_PATH.tar.gz
rm $SQLITE_PATH.tar.gz

echo "Configure"
cd $SQLITE_PATH
emconfigure ./configure

echo "Build"
emmake make
emcc \
    -g2 \
    -s EXPORTED_FUNCTIONS='["_main"]' \
    -s MODULARIZE=1 \
    -s ERROR_ON_UNDEFINED_SYMBOLS=0 \
    sqlite3.o sqlite3-shell.o -o sqlite.wasm

cp sqlite.wasm ..

echo "Done"
