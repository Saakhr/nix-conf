#!/bin/sh

alpha='dd'
background='#282a36'
selection='#44475a'
comment='#6272a4'

yellow='#f1fa8c'
orange='#ffb86c'
red='#890000'
magenta='#2f79c6'
blue='#00897b'
cyan='#02b0a1'
green='#098900'

i3lock \
  --insidever-color=$selection$alpha \
  --insidewrong-color=$selection$alpha \
  --inside-color=$selection$alpha \
  --ringver-color=$green$alpha \
  --ringwrong-color=$red$alpha \
  --ringver-color=$blue$alpha \
  --ringwrong-color=$red$alpha \
  --ring-color=$blue$alpha \
  --line-uses-ring \
  --keyhl-color=$cyan$alpha \
  --bshl-color=$orange$alpha \
  --separator-color=$selection$alpha \
  --verif-color=$blue \
  --wrong-color=$red \
  --modif-color=$red \
  --layout-color=$blue \
  --date-color=$cyan \
  --time-color=$cyan \
  --screen 1 \
  --blur 10 \
  --clock \
  --indicator \
  --time-str="%H:%M:%S" \
  --date-str="%A, %Y-%m-%d"       \
  --wrong-text="Wrong!" \
  --noinput="No Input" \
  --lock-text="Locking..." \
  --lockfailed="Lock Failed" \
  --radius=100 \
  --pass-media-keys \
  --pass-screen-keys \
  --pass-volume-keys \
#  --time-font="JetBrainsMono Nerd Font" \
#  --date-font="JetBrainsMono Nerd Font" \
#  --layout-font="JetBrainsMono Nerd Font" \
#  --verif-font="JetBrainsMono Nerd Font" \
#  --wrong-font="JetBrainsMono Nerd Font" \

# These last five lines are commented because they concern the font you want to use.
# JetBrainsMono Nerd Font is the font that was used in the screenshot.
# To specify a favorite font, just uncomment the five lines and replace the parameter with the font you prefer.


