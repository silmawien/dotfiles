if [ -e ~/sandbox/current-sdk ]; then
    export ANDROIDSDK_HOME=~/sandbox/current-sdk
    export ANDROID_HOME=$ANDROIDSDK_HOME
    PATH=${ANDROIDSDK_HOME}/platform-tools:$PATH
    PATH=${ANDROIDSDK_HOME}/tools:$PATH
fi

