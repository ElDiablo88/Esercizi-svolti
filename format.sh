#!/ bin / bash
for i in $(find -name "*.c" -type f | egrep -v "WebAPI|.git|LICENSE");
do
  echo "formatting === $i ===";
  clang-format -i $i;
done
