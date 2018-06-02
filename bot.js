const Discord = require('discord.js');
var bot=new Discord.Client();
var HH=new Date().getHours();
var MM=new Date().getMinutes();
var i=0;
var flag=0;
const usr=require(__dirname+'/cred.json');
const key=require(__dirname+'/keywords.json');
bot.on("ready",async()=>{
	console.log("\n\n\t ~ DiscordListener Online ");
	bot.user.setActivity(" with Myself");
});
bot.on('message',msg=>{
	if(msg.content=='~on'){
		if(msg.author.id==usr.uid){
			msg.author.send("\n ~ Discord Listener Online ");
			flag=1;
		}
	}
	if(msg.content=='~off'){
		if(msg.author.id==usr.uid){
			msg.author.send("\n ~ Discord Listener Stopped ");
			flag=0;
		}
	}
	if(flag==1){
		for(i=0;i<key.keys.length;i++){
			if(msg.content.includes(key.keys[i])&&msg.channel.type!='dm'){
				bot.users.get(usr.uid).send("[ "+msg.author.username+" ] : "+ msg.content);
				console.log("\n");
				console.log(HH+":"+MM+" [ "+msg.author.username+" ] - " + msg.content );
			}
		}
	}
});
bot.login(usr.token);
