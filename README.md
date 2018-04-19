# local-mr

A simple tool for streaming map-reduce task running on local machine with with multiprocessing.  


## Example
```
bash example.sh
```  
or
```python
localmr \
--input=./test_mr_input \
--output=./test_mr_output \
--mapper="awk '{print \$0}'" \
--reducer="cat" \
--nmap=2 \
--nred=5
```

