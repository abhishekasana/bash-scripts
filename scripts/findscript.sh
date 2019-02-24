#! /bin/zsh

echo "Items to be searched"
if [ -z $@ ]; then 
echo "\nNo Input Given To Be Searched!!" 
fi
for item in $@ 
do
 echo " Looking for  $item"
 search_result=$( find . -type f -maxdepth 1 -name "*${item}*" )
 if [ $? -eq 0 ] && [ -z "$search_result" ]; then
   echo "FOUND NOTHING!!!"
 else
   echo "This is what I could found"
   echo "$search_result"
 fi
done

