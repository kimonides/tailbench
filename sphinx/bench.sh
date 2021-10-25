for i in {500..1500..100};
do
    echo "Iteration $i"
    TBENCH_QPS=$i ./run.sh
    mv lats.bin lats_$i.bin
done
