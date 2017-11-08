#!/bin/bash
echo "running IBFE/ex0 to compute error rates"
sleep 1
echo "deleting old error rates file"
rm errors.dat
sleep 1
echo "doing level 1"
./main2d input2d.test 64 -mat_new_nonzero_allocation_err false >> output.blah
echo "doing level 2"
./main2d input2d.test 128 -mat_new_nonzero_allocation_err false >> output.blah
echo "doing level 3"
./main2d input2d.test 256 -mat_new_nonzero_allocation_err false >> output.blah
#echo "doing level 4"
#./main2d input2d.test 512 -mat_new_nonzero_allocation_error false >> output.blah
echo "Done running "
