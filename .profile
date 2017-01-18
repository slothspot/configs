# Enable 256 color in term
if [ -n "$DISPLAY" -a "$TERM" = "xterm" ] ; then
    export TERM="xterm-256color"
fi

# Add folder for misc utils to $PATH
if [ -d "$HOME/Tools/bin" ] ; then
    PATH="$HOME/Tools/bin:$PATH"
fi

#Add sbt home to path
if [ -d "$HOME/Tools/sbt" ] ; then
    export SBT_HOME=$HOME/Tools/sbt
    PATH="$HOME/Tools/sbt/bin:$PATH"
fi

#Add brew to path
if [ -d "/usr/local/bin" ]; then
    PATH="/usr/local/bin:$PATH"
fi

export PATH="$PATH"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
