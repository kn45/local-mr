rm ./test_mr_input
for i in {1..20}; do
  echo $RANDOM"	test	line" >> ./test_mr_input
done

./localmr \
--input=./test_mr_input \
--output=./test_mr_output \
--mapper="awk '{print \$0}'" \
--reducer="cat" \
--nmap=2 \
--nred=5
