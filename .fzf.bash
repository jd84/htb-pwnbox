# Setup fzf
# ---------
if [[ ! "$PATH" == */home/htb-averageguy/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/htb-averageguy/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/htb-averageguy/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/htb-averageguy/.fzf/shell/key-bindings.bash"
