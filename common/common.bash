# このディレクトリの場所を$CUSTOM_SCRIPT_PATHとして記述する 

# 出力の後に改行を入れる
function add_line {
  if [[ -z "${PS1_NEWLINE_LOGIN}" ]]; then
    PS1_NEWLINE_LOGIN=true
  else
    printf '\n'
  fi
}
PROMPT_COMMAND='add_line'

export PS1=' \[\e[30;47m\] \t \[\e[37;46m\] \[\e[30m\] dir:\W \[\e[30;42m\] branch:$(__git_ps1 "(%s)") \[\e[0m\] \$ '

