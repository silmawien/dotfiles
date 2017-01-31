if [ -e ~/Android/Sdk ]; then
    #export ANDROIDSDK_HOME=~/Android/Sdk
    export ANDROID_HOME=~/Android/Sdk
    PATH=${ANDROID_HOME}/platform-tools:$PATH
    PATH=${ANDROID_HOME}/tools:$PATH
fi

