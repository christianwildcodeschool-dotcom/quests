#### Pour la découverte des commandes un simple _alias_ dans une console powershell permet d'afficher tous les alias.
#### Pour une recherche ciblé on peut utiliser la commande Get-Alias _alias_.


| Commande Linux | Commande Powershell | Commande pour la trouver
| :-------------- |:--------------------|:--------------------
|cp| Copy-Item | Get-Alias cp
|rm| Remove-Item | Get-Alias rm
|cd| Set-Location | Get-Alias cd
|mkdir| New-Item | Get-Help Mkdir - Découvert de l'alias ni
|man | help ou Get-Help | Get-Alias man
|history | Get-history | Get-Alias history
|alias | Get-Alias | Get-Help alias - Découvert de la commande Get-Alias
| cat | Get-Content | Get-Alias cat
