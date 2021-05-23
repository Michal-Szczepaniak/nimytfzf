import db_sqlite, strutils, os, system

let db* = open(getHomeDir() & "/.local/share/Flavio Tordini/Minitube/minitube.db", "", "", "")

proc formatColumn(text: string, width: int): string =
    let t = text[0 .. min(width, text.len()-1)]
    return t & repeat(' ', width - (t.len()-1))

for row in db.fastRows(sql"SELECT * FROM subscriptions_videos ORDER BY published desc;"):
    echo formatColumn(row[6], 120) & '|' & formatColumn(row[7], 30) & '|' & formatColumn(row[10], 60)
