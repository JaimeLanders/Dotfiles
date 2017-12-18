Title:		readme.md
Type:		Arch .config documentation
By:			JtathaX
Updated:	10/31/17

Documentation for Arch .config files.

Last System Update: 10/24/17

Main Color: #00d7ff

=====
TODO:
=====
1.	Organize .configs x
2.	Upload to git x
3.	Uniform color theme 

================
.config locales:
================

bash		~/.bashrc
compton		~/.config/compton.conf
i3			~/.i3/config
rofi		~/.config/rofi/config.rasi
tmux		~/.tmux.conf
vim			~/.vimrc
xorg		~/.xinitrc
yabar		~/.config/yabar/yabar/conf


==============
Arch Keybinds:
==============

---bash keybinds---
ctrl + a 					Go to beginiing
ctrl + e 					Go to end
ctrl + l 					Clear

---i3 keybinds---
Alt + d 					Open rofi drun
Alt + h						Split horizontally
Alt + v 					Split vertically
Alt + <arrow>				Focus window to arrow
Alt + <0-9>					Switch to workspace 0-9
Alt + Enter					New window
Alt + Shift + c 			Exit Chrome
Alt + Shift + e 			Exit i3
Alt + Shift + f 			Start Firefox
Alt + Shift + n 			Start Nautilus
Alt + Shift + q				Close window
Alt + Shift + r  			Restart i3
Alt + Shift + s  			Start Sublime
Alt + Shift + s  			Start terminal
Alt + Shigt + y				Reload i3 config
Alt + Shift + <0-9>			Move window to workspace 0-9
Alt + Shift + <arrow>		Move window to arrow
Ctrl + Shift + q			Close window

---rofi keybind---
Ctrl + d 					Invoke drun

---sublime text keybinds---
Ctrl + PgUp					Previous Tab
Ctrl + PgDn					Next Tab

---tmux keybinds---
Ctrl + b & <arrow>			Navigate panes
Ctrl + b & c 				Create pane
Ctrl + b & c + <arrow> 		Resise pan towards arrow
Ctrl + b & n 				Next window
Ctrl + b & p 				Previous window
Ctrl + b & d				Detatch session
Ctrl + b & D  				Detatch select sessions
Ctrl + b & z 				Pane full screen toggle
Ctrl + b & <0-9>			Switch to window number 0-9	1
Ctrl + b & ,				Rename current window
Ctrl + b & %				Split panes left to right
Ctrl + b & " 				Split pane top to bottom
Ctrl + d					Close panese

---vim keybinds---
d                       	Delete chars
D 							Delete line
dd   						Delete line 
h							Left
i 							Insert
j							Down
k                       	Up
l 							Right
u 							Undo
v  							Select chars
x							Delete chars
y							Yank (copy) selected chars
Y 							Yank line

---vim commands---
:%s/foo/bar/g 				Replace all instances of foo with bar
:q!							Quit without saving
:wq							Save and quit

=========
Commands:
=========

---tmux commands---
tmux ls 					Show sessions
tmux -t attach <#>			Attach session #
pkill -f tmux				Kill all tmux sessions