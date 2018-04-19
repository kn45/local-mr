
head test_mr_input | awk -F'\t' --non-decimal-data -v nred=3 '
{
  bucket_number = int(get_hash($1)) % nred;
  print $0 > "tmpf."bucket_number
  print bucket_number;
}

function get_hash(fld) {
  cmd = sprintf("echo %s | md5sum", fld);
  cmd | getline output;
  split(output, arr, " ");
  return sprintf("%d", "0x"arr[1])
}
'
