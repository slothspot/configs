# Enable 256 color in term
if [ -n "$DISPLAY" -a "$TERM" = "xterm" ] ; then
    export TERM="xterm-256color"
fi

# Add folder for misc utils to $PATH
if [ -d "$HOME/Tools/bin" ] ; then
    PATH="$HOME/Tools/bin:$PATH"
fi

#Add JDK home to path
if [ -d "$HOME/Tools/jdk1.7.0_05" ] ; then
    export JDK_HOME="$HOME/Tools/jdk1.7.0_05"
    PATH="$HOME/Tools/jdk1.7.0_05/bin:$PATH"
fi

#Add Eclipse home to path
if [ -d "$HOME/Tools/eclipse" ] ; then
    PATH="$HOME/Tools/eclipse:$PATH"
fi

#Add sbt home to path
if [ -d "$HOME/Tools/sbt" ] ; then
    export SBT_HOME=$HOME/Tools/sbt
    PATH="$HOME/Tools/sbt:$PATH"
fi

#Add Android SDK tools to path
if [ -d "$HOME/Projects/android-sdk-linux" ] ; then
    ANDROID_HOME="$HOME/Projects/android-sdk-linux"
    PATH="$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$PATH"
fi

export PATH="$PATH"

