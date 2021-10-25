
pqos -R > /dev/null
pqos -e "llc:0=0x30000;" > /dev/null
pqos -a "llc:1=12-23,36-47;" > /dev/null
pqos -e "llc:1=0xfffff;" > /dev/null


for i in {500..1500..100};
do
    echo "Iteration $i"
    export TBENCH_QPS=$i
    taskset -c 0,1 ./run.sh
    mv lats.bin lats_$i.bin
done
