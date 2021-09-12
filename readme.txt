DOWNLOAD FILES: http://newagesoldier.com/myfiles/openeqc

_SERVER HOSTING_
-----------------
1) Download required files, "EQClassic Alpha DB SQL Files", "EQClassic Alpha Server Files", "Quest Files" and "Map Files".
Unzip "EQClassic Alpha Server Files" to your desktop. Put "Quest Files" and "Map Files" inside this folder.

2) Download/Install required 3rd party files...
MySQL 5.1 or newer (https://dev.mysql.com/downloads/mysql/)
ActivePerl 5.12 (http://eqemu.github.io/downloads/ActivePerl-5.12.3.1204-MSWin32-x86-294330.msi)
MySQL Workbench (https://dev.mysql.com/downloads/workbench/)

3) Open MySQL Workbench, connect to 127.0.0.1, make a new schema called eqclassic, make it default, open the eqclassic.sql file in MySQL Workbench and run it.
You can change "accounts" table to add more accounts to login.

4) Edit login.ini and db.ini to reflect your MySQL database credentials. 
Want someone to connect to your server via the internet? Change 127.0.0.1 in login.ini and boot5zones.bat to your external IP (whatismyip.com)

4) Run Login.exe, World.exe and Boot5Zones.bat (in this order). Leave these windows open, as this is your server.


_GAME CLIENTS_
-----------------
1) Download "EverQuest Trilogy Game CD's (ISO Files)" and mount CD1 and CD2. Start installing the game.
Delete shortcuts on desktop, do not run them.

2) Download "Client fix. Required for Login to World/Zone." place these files in your "Sony/Everquest Trilogy" folder. 
Make a shortcut on your desktop to eqw.exe (you can change the icon too if you want). Edit "eqhost.txt" change login and register to IP of server.

3) Run eqw.exe and point to eqgame.exe. The game will now launch. Select VooDoo as your 3D card. Login with the credentials in the "accounts" table in the DB.


_COMPILING CODE_
-----------------
1) Clone the code from GitHub (https://github.com/erfg12/EQTrilogy-Old).

2) Download "EverQuest Compile Dependencies (Required for compile)" unzip and place the folers in the cloned source Dependencies folder.

3) Open the solution file (.sln) with Visual Studio 2013 (https://go.microsoft.com/fwlink/?LinkId=517284) and compile with the Debug configuration.
This will give you login.exe, world.exe, zone.exe and SharedMemory.dll in the Build/Debug folder.



- EQClassic was developed by Yeahlight and Harakiri. This is a fork of their early leaked code, and was fixed by NeWaGe to run on modern systems.