
####  for wallpaper
sudo apt install feh
exec_always feh --bg-scale ~/Pictures/Wallpapers/jungle.jpg

#########################

#### for monotiros
sudo apt install arandr  # gui for xrandr
# save as to a file and run it in i3 conf file
exec_always <path/to/saved/file>

#########################


#### force apps to open on particular workspace

# use xprop to find the app's class
xprop

# add this to i3 conf
assign [class="<class>"] <workspace>


########################


#### set workspace to monitor

xrandr --listmonitors # to see monitor ids

# add these to i3 config

set $monitor_left HDMI-1
set $monitor_right LVDS-1

workspace <workspace_id> output <monitor_id>

# Note: logout to apply these changes

########################


#### add fonts to workspaces

# dl fontawsome zip from 
# add .ttf files to your ~/.fonts/ dir
# copy the font from fa-cheatsheets to the name of your workspace in i3 conf

########################


#### dmenu

sudo apt install rofi
# add this to i3 conf
bindsym $mod+d exec rofi -show run -lines 3 -eh 2 -width 100 -padding 800 -opacity "85" -bw 0 -bc "$bg-color" -bg "$bg-color" -fg "$text-color" -hlbg "$bg-color" -hlfg "#9575cd"
# Note: opacity needs compton installed.


 ######################

#### transparent window
sudo apt install compton

# add this for transition 
compton -f -I 0.05 -O 0.05

################

#### lock

https://www.reddit.com/r/unixporn/comments/3358vu/i3lock_unixpornworthy_lock_screen/
################


#### bar

sudo apt install i3blocks
# copy conf file fom /etc/i3blocks.conf to ~/.conf/i3/i3blocks.conf
# change status commnad
##############
