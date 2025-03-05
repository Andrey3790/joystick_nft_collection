ls json|while read line
do
digital_line="$(echo $line|cut -d "." -f 1)"
num=$(($digital_line + 1))
#head -57 json/$line |sed -e s/#$digital_line/#$num/|sed -e "s=https://images-joystick-nft.4everland.store/=https://raw.githubusercontent.com/Andrey3790/joystick_nft_collection_test/refs/heads/main/images/=g" > json1/$line
head -57 json/$line |sed -e s/#$digital_line/#$num/|sed -e "s=https://images-joystick-nft.4everland.store/=https://raw.githubusercontent.com/Andrey3790/joystick_nft_collection/refs/heads/main/images/=g" > json1/$line
cat button.txt >> json1/$line
done
mv json json_old
mv json1 json

ls json|grep -v "_meta"|while read line
do
digiline="$(echo $line|cut -d "." -f 1)"
imgline="$(echo $line|sed 's/.json/.png/')"

rm -rf json_old
#if [ $digiline -le '5' ];then
#echo $digiline
#ls -la json/$line
#ls -la images/$imgline
#else
#rm -rf json/$line
#rm -rf images/$imgline
#fi

done
