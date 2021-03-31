for i in {1..20};
do
    echo "Iteration $i"
    TBENCH_QPS=$i ./run.sh
    mv lats.bin lats_$i.bin
done