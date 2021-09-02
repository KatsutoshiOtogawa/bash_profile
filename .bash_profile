#  for load .env file
function load_env {

    eval "$(cat $1 | sed 's/# .*$//' | xargs -n 1 -I {} echo export {};)"
}
function convert_text_windows_style {
    # change to utf8(BOM) CRLF
    nkf --overwrite --oc=UTF-8-BOM -Lw $1
}

export WINEPREFIX=/home/$USER/.wine

#
function switch_wine_path {
    export HOME=/home/$USER/.wine/drive_c/users/$USER
}
