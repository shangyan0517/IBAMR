#!/bin/bash
echo "running IBFE/ex0 to compute error rates"
sleep 1
echo "deleting old error rates file"
rm IBFE_errors.dat
sleep 1
echo "doing level 1"
./main2d input2d.test 100 >> output.blah
echo "doing level 2"
./main2d input2d.test 200 >> output.blah
echo "doing level 3"
./main2d input2d.test 300 >> output.blah
echo "doing level 4"
./main2d input2d.test 400 >> output.blah
echo "doing level 5"
./main2d input2d.test 500 >> output.blah
echo "Done running "
