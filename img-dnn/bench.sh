for i in {1..30};
do
    echo "Iteration $i"
    TBENCH_QPS=$i ./run_networked.sh
    mv lats.bin lats_$i.bin
    sleep 20
done
