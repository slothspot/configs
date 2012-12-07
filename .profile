# Enable 256 color in term
if [ -n "$DISPLAY" -a "$TERM" = "xterm" ] ; then
    export TERM="xterm-256color"
fi

# Add folder for misc utils to $PATH
if [ -d "$HOME/Tools/bin" ] ; then
    PATH="$HOME/Tools/bin:$PATH"
fi

#Add JDK home to path
if [ -d "$HOME/Tools/jdk1.7.0_09" ] ; then
    export JDK_HOME="$HOME/Tools/jdk1.7.0_09"
    PATH="$HOME/Tools/jdk1.7.0_09/bin:$PATH"
fi

#Add Eclipse home to path
if [ -d "$HOME/Tools/eclipse" ] ; then
    PATH="$HOME/Tools/eclipse:$PATH"
fi

#Add sbt home to path
if [ -d "$HOME/Tools/sbt" ] ; then
    export SBT_HOME=$HOME/Tools/sbt
    PATH="$HOME/Tools/sbt/bin:$PATH"
fi

#Add Android SDK tools to path
if [ -d "$HOME/Tools/android/android-sdk-linux" ] ; then
    ANDROID_HOME="$HOME/Tools/android/android-sdk-linux"
    PATH="$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$PATH"
fi

#Add Android NDK tools to path
if [ -d "$HOME/Tools/android/android-ndk-r8b" ] ; then
    NDK_HOME="$HOME/Tools/android/android-ndk-r8b"
    PATH="$NDK_HOME:$PATH"
fi

#Add OCaml to path
if [ -d "$HOME/Tools/ocaml" ] ; then
    OCAML_HOME="$HOME/Tools/ocaml"
    PATH="$OCAML_HOME/bin:$PATH"
fi

#Add Clang/LLVM to path
if [ -d "$HOME/Tools/llvm" ]; then
    LLVM_HOME="$HOME/Tools/llvm"
    CLANG_HOME="$HOME/Tools/llvm"
    PATH="$CLANG_HOME/bin:$PATH"
fi

export PATH="$PATH"

