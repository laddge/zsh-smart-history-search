# smart history search for zsh.
# https://github.com/laddge/zsh-smart-history-search
# v1.0
# Copyright (c) 2022 Laddge

# define variables
_zsh_smarths_buf0=''
_zsh_smarths_buf1=''
_zsh_smarths_cur=0

# backward function
zsh-smarths-backward() {
    if [ "$BUFFER" = "" ]; then
        zle .history-search-backward
        _zsh_smarths_buf0=$BUFFER
        _zsh_smarths_buf1=$BUFFER
    else
        if [ "$BUFFER" != "$_zsh_smarths_buf0" ]; then
            if [ "$BUFFER" != "$_zsh_smarths_buf1" ]; then
                _zsh_smarths_cur=$CURSOR
            else
                CURSOR=$_zsh_smarths_cur
            fi
            zle .history-beginning-search-backward
            zle .end-of-line
            _zsh_smarths_buf1=$BUFFER
        else
            zle .history-search-backward
            _zsh_smarths_buf0=$BUFFER
            _zsh_smarths_buf1=$BUFFER
        fi
    fi
}

# forward function
zsh-smarths-forward() {
    if [ "$BUFFER" = "" ]; then
        zle .history-search-forward
        _zsh_smarths_buf0=$BUFFER
        _zsh_smarths_buf1=$BUFFER
    else
        if [ "$BUFFER" != "$_zsh_smarths_buf0" ]; then
            if [ "$BUFFER" != "$_zsh_smarths_buf1" ]; then
                _zsh_smarths_cur=$CURSOR
            else
                CURSOR=$_zsh_smarths_cur
            fi
            zle .history-beginning-search-forward
            zle .end-of-line
            _zsh_smarths_buf1=$BUFFER
        else
            zle .history-search-forward
            _zsh_smarths_buf0=$BUFFER
            _zsh_smarths_buf1=$BUFFER
        fi
    fi
}

# registar widgets
zle -N zsh-smarths-backward
zle -N zsh-smarths-forward
