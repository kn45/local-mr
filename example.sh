rm ./test_mr_input
for i in {1..2000}; do
  echo ${RANDOM:0:2}"	test	line" >> ./test_mr_input
done

./localmr \
--input=./test_mr_input \
--output=./test_mr_output \
--mapper="awk '{print \$0}'" \
--nmapper=2

./localmr \
--input=./test_mr_input \
--output=./test_mr_output \
--mapper="awk '{print \$0}'" \
--reducer="cat" \
--nmapper=2 \
--nreducer=5
