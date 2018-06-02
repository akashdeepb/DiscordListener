FILENAME="keywords.json"
echo -e "\t\t ~ D i s c o r d     L i s t e n e r   B o t "
echo -e "\t\t\t\t ~ B y     A d B     ~ "
echo -e "\n\n  ---  E N T E R     K E Y W O R D S  --- "
echo -e "\n\t Enter \" END \" when you are finished entering keywords \n\n"
echo "{">$FILENAME
echo -e -n "\t\"keys\": [ \"A0h@dcToBlk#\"">>$FILENAME
while [ "$key" != "END" ]
do
	read -p "Enter KEYWORD : " key
	echo -n ",\"$key\"">>$FILENAME
done
echo "]">>$FILENAME
echo "}">>$FILENAME
echo -e "\n\t K E Y W O R D S     S A V E D \n\n "
