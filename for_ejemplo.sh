i=1
for f in $(ls *)
do
    echo "Archivo $i: $f"
    i=$(($i+1))
    sleep 1
done


for (( i=0; i<10; i++))
do 
    echo -n $i ", "
done

echo ""
echo "Cuenta regresiva:"
for i in $(seq 10 -1 0);
do
    echo "Cuento $i"
done
