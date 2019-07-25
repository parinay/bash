
echo "Removing existing tags and cscope.* files"
echo -n "rm tags cscope.out cscope.files"

echo "Starting a fresh..."
if [ $GOROOT = "" ]
then
    echo "GOROOT is not set"
    exit 1
fi

go_pkg_src=$GOROOT/src

echo "Running cscope in $go_pkg_src ..."
find $go_pkg_src -name "*.go" -print > cscope.files
echo "Running cscope in $(pwd) ..."
find . -name "*.go" -print >> cscope.files

if cscope -b -k; then
    echo "Done"
else
    echo "Failed"
    exit 1
fi

echo "Running ctags in $(pwd)..."
ctags -R .

