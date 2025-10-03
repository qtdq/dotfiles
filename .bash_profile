#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

DELAY=0.4
echo "Awaiting $DELAY second before running Hyprland"
sleep "$DELAY"
dbus-run-session Hyprland

# uv
export PATH="/home/dxth/.local/bin:$PATH"
