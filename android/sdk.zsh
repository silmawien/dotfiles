if [ -e ~/sandbox/current-sdk ]; then
    export ANDROIDSDK_HOME=~/sandbox/current-sdk
    PATH=${ANDROIDSDK_HOME}/platform-tools:$PATH
    PATH=${ANDROIDSDK_HOME}/tools:$PATH
fi

