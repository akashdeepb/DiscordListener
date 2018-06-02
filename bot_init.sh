echo -e "\t\t *** D i s c o r d    L i s t e n e r   B o t ***"
echo -e "\t\t\t\t ~ B y      A d B  ~ "
echo -e "\n\n"
read -p " U S E R    I D  : " uid
read -p " B O T    T O K E N  : " token
chmod +x keys.sh
FILENAME="cred.json"
echo "{">$FILENAME
echo -e "\t\"token\":\"$token\",">>$FILENAME
echo -e "\t\"uid\":\"$uid\"">>$FILENAME
echo "}">>$FILENAME
npm init
npm install discord.js --save
echo -e " BOT INITIALIZATION COMPLETE "
