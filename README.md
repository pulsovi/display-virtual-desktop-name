# Display Virtual Desktop Name

Le programe doit être lancé avec la priorité "temps réel" pour s'executer correctement.

Pour cette raison, il ne doit pas être démarré en plaçant un raccourci dans `shell:startup` ou `shell:common startup` mais via une tâche planifiée.

La commande a executer est : 

```cmd
cmd /S /C "START /REALTIME /B "C:\Program Files\AutoHotkey\AutoHotkeyU64.exe" "C:\dev\display-virtual-desktop-name\display-virtual-desktop-name.ahk""
```
