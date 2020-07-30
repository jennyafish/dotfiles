# tmux cheatsheet

## Sessions

* `tmux new -s mysession` ~ start new session with name "mysession"
* `tmux kill-session -t mysession` ~ kill session with name "mysession"
* `tmux ls` ~ list sessions
* `<C-b> $` ~ rename session
* `<C-b> d` ~ detach from session
* `tmux a` ~ attach to last session
* `tmux a -t mysession` ~ attach to session with name "mysession"

## Panes
note: these are custom configurations

### New Pane
* `<C-b> |` ~ horizontal split
* `<C-b> -` ~ vertical split

### Switch Panes
* `alt-arrow` ~ switch in arrow direction

### Kill Pane
* `<C-b> x` ~ close current pane

## Move Running Process to Tmux
(requires `reptyr`)

1. suspend process `<C-z>`
2. resume process in background `bg`
3. Disown process `disown %1`
4. Launch tmux
5. Find PID `ps a | grep <$PROCESS_NAME>`
6. Resume process in tmux: `reptyr <$PID>`
