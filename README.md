Proof of concept

This script, opens minitube subscription database which contains all videos from all subscriptions, and gets all videos sorted chronologically, formats that a bit for fzf (it needs to be improved but it's poc) and then fancy dandy bash scripts extract youtube url after fzf is done and all that is passed as argument to mpv so that when you pick video it opens in mpv. In order to update subscriptions list just run minitube.

To run this you need to either compile ytfzf.nim using nim or just grab executable. If you don't trust me feel free to compile it yourself
`nim c ytfzf.nim`

commandline for opening in mpv is 
`mpv $(./ytfzf | fzf -m --bind change:top --tabstop=1 --layout=reverse | cut -d'|' -f 3)`
you can add it to .bashrc or something i wasn't too bothered its poc anyway

