
# 200ping-Poe2-Guild-Filter

## Adding Filters
If you know what you're doing create a branch and Pull Request with your filter changes and ping me to merge it.

If you don't know how to do that ping me and I'll just add them. 

## Installing (Windows only *Linux and Mac are cringe*)
Download [git](https://git-scm.com/).

![img](/docs/1.png?raw=true "")
![img](/docs/2.png?raw=true "")

Launch the installer and just keep clicking "next" accepting all the defaults.

Open your game and open the settings. Under the "Game" tab you should see the filter settings. Click on the folder icon to open POE2's filter folder.

![img](/docs/3.png?raw=true "")

This is where your filters are stored, we need to do a couple things here.

If you're using your own filter rename your current filter to 

    NeverSinks Litefilter.filter

(Optional) If you don't currently use a filter download [NeverSinks's filter](https://github.com/NeverSinkDev/NeverSink-PoE2litefilter). Click on the source code file and save it. Open the file and drag and drop the "NeverSinks Litefilter.filter" into POE2's filter folder.

Your POE2's filter folder should look something like this:

![img](/docs/11.png?raw=true "")

Open up the "NeverSinks Litefilter.filter" with notepad. Paste 

    ### BOUNDARY_SPLIT

towards the top of the filter file on a new line and save it. In mine I place it after the "Overrides - Uniques, Valuables" sections.

![img](/docs/14.png?raw=true "")

Back in the POE2's filter folder, click on the address bar and copy the address.

![img](/docs/5.png?raw=true "")

In your start menu bar type "advance system settings" and open the app.

![img](/docs/6.png?raw=true "")

Click on "Enviroment Variables..."

![img](/docs/7.png?raw=true "")

Under system variables click on "New..."

![img](/docs/8.png?raw=true "")

Set variable name to

    POE2_FILTERS

Set the variable value to the copied address and click ok.

![img](/docs/9.png?raw=true "")

Click on "New..." again to create another variable.

Set variable name to

    RUN_GIT

Set the variable value to

    C:\Program Files\Git\cmd\git.exe

and click ok.

![img](/docs/10.png?raw=true "")

(Optional) If you have git installed to anywhere other than the default location, find your git.exe file and set the value to that path.

Keep clicking ok to close the all the windows.

Head back to POE2's filter folder. Click on the address bar of the explorer, clear it out, type "cmd" and click enter.

![img](/docs/12.png?raw=true "")

Paste:

    git clone https://github.com/willcola/200ping-Poe2-Guild-Filter.git

into the prompt. This will download a file called "200ping-Poe2-Guild-Filter"

Open up Steam and right click Path of Exile 2 in your library and click on "Properties"

![img](/docs/13.png?raw=true "")

Paste this whole line into the launch options:

    "REPLACE_ME\run.bat" %COMMAND%

Go back to your POE2's filter folder and open the "200ping-Poe2-Guild-Filter" folder. Click on the address bar again and copy the address.

Back in steam's launch options replace the "REPLACE_ME" with the copied address. Your full launch options should look something like this:

    "C:\Users\Will\Documents\My Games\Path of Exile 2\200ping-Poe2-Guild-Filter\run.bat" %COMMAND%

You're done. Now when you launch the game the program will grab the latest guild filters combine them with your current filters into a new filter called "GUILD_COMBINED"

Make sure you set this as your active filters in game.

When the game launches a new CMD window will launch along side with it. After is says "Combined file saved to..." you can close it if you want.