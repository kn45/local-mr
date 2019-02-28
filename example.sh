rm -f ./test_mr_input1
rm -f ./test_mr_input2
for i in {1..2001}; do
  echo ${RANDOM:0:2}"	test	line" >> ./test_mr_input1
  echo ${RANDOM:0:2}"	test	line" >> ./test_mr_input2
done

./localmr \
--input=./test_mr_input1 \
--input=./test_mr_input2 \
--output=./test_mr_output.task1 \
--mapper="awk '{print \$0}'" \
--nmapper=2 \
--combine=true

./localmr \
--input=./test_mr_input1 \
--output=./test_mr_output.task2 \
--mapper="awk '{print \$0}'" \
--reducer="cat" \
--nmapper=2 \
--nreducer=5 \
--combine=false
