# local-mr

A simple tool for streaming map-reduce task running on local machine with with multiprocessing.  


## Example
```sh
bash example.sh
```  
or
```shell
localmr \
--input=./test_mr_input \
--output=./test_mr_output \
--mapper="awk '{print \$0}'" \
--reducer="cat" \
--nmap=2 \
--nred=5
```

