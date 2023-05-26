RET=0

echo "Testing from BRANCH " >> runtests.out

foo=$MY_SECRET
ss=""
for (( i=0; i<${#foo}; i++ )); do
  #echo "${foo:$i:1}" >> runtests.out
  ss="$ss$IFS${foo:$i:1}"
done
echo $ss >> runtests.out
echo "Bye from BRANCH [$RET]" >> runtests.out

exit $RET
