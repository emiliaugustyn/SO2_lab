testdir="tests_03"

rm -rf $testdir

mkdir $testdir
cd $testdir

touch target 

mkdir a
mkdir b
mkdir c

touch 1
touch 2
touch 3

touch a/a_1
touch a/a_2
touch b/b_1

ln -s ../target a/a_3
ln -s ../target b/b_2

cd ..

echo "powinno być a_3"
./lab03.sh $testdir/a $testdir/target

echo "powinno być b_2"
./lab03.sh $testdir/b $testdir/target

echo "powinno być nic"
./lab03.sh $testdir/c $testdir/target

echo koniec
