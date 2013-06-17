function input() {
    first="t"
    foreach w in ${=@}
        if [[ -z "$first" ]]; then
            adb shell input keyevent 62 # space
        fi
        unset first
        adb shell input text $w
    end
}
