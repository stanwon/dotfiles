xmodmap .Xmodmap

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export SDL_IM_MODULE=fcitx
fcitx5 &

export LANG=en_US.UTF-8
export LC_TYPE=en_US.UTF-8
export EDITOR=nvim

export https_proxy=http://127.0.0.1:7890
export http_proxy=http://127.0.0.1:7890
export all_proxy=socks5://127.0.0.1:7890

#feh --auto-rotate --bg-scale ~/Pictures/wallpapers/3.jpg &
source ~/.fehbg

cvt 2560 1440 75

xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

xset r rate 250 50

picom &
exec dwm
