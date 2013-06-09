
function c
        cd ~/code/$argv
end

function _c
        ls $HOME/code
end

complete -c c -a "(_c)"
