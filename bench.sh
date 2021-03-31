for i in {1..20};
do
    echo "Iteration $i"
    sed "s/TBENCH_QPS=.*/TBENCH_QPS=$i" run.sh
    cat run.sh
done