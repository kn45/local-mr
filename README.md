# Local MR

A simple tool for streaming map-reduce task running on local machine with with multiprocessing.  
`export LC_COLLATE=C` to ensure sort behavior.


## Usage
- -i, --input:  
  input file
- -o, --output:  
  output file
- -m, --mapper:  
  mapper command
- -a, --nmap, --nmapper:  
  number of mapper
- -r, --reducer:  
  reducer command
- -b, --nred, --nreducer:  
  number of reducer


## Example
```shell
localmr \
--input=./test_mr_input1 \
--input=./test_mr_input2 \
--output=./test_mr_output \
--mapper="awk '{print \$0}'" \
--reducer="cat" \
--nmapper=2 \
--nreducer=5
```  
Or refer to
```shell
bash example.sh
```  
