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

# tmuxがインストールされていれば実行
if which tmux >/dev/null 2>&1; then
    #if not inside a tmux session, and if no session is started, start a new session
    #もしtmuxの中にいないか起動していればサブシェルでアタッチ失敗したら新しいセッションを実行
    test -z "$TMUX" && (tmux attach -t main || tmux new-session -s main)
fi

