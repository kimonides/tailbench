for i in {1..30};
do
    docker cp tb:/tailbenchQPS/sphinx/lats_$i.bin ./results/
done