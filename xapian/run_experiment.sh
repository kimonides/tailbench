 #!/bin/bash
 for i in 100 200 300 400 500 600 700 800 900 1000 1100 1200 1300 1400 1500; do
            echo +++++++++++++++++++++++++++++iteration:$i++++++++++++++++++++++++++++++++++++++
	    ./run_application_1.py -c 12 -l $i -s 18-23,42-47 -b linear_regression -d 74
           # ./run_application_1.py -c 12-17 -s 18-23,42-47 -b linear_regression -d 155
        done
