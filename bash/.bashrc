# vterm dir tracking
vterm_prompt_end(){
    printf "\e]51;A$(whoami)@$(hostname):$(pwd)\e\\"
}
PS1=$PS1'$(vterm_prompt_end)'
