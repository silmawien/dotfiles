function input() {
    first="t"
    foreach w in ${=@}
        if [[ -z "$first" ]]; then
            adb -d shell input keyevent 62 # space
        fi
        unset first
        adb -d shell input text $w
    end
}
