# SleepyProgram

# Auto Sleep / Shutdown for windows

## Pourquoi ce projet ?

Il m’arrive (souvent 😅) de m’endormir pendant un épisode de série…
Résultat : la saison continue toute seule en fond, et je me réveille complètement perdu dans l’histoire.

Ce petit script `.bat` a donc été créé pour **mettre automatiquement l’ordinateur en veille (ou l’éteindre)** après un temps défini.
Une façon simple d’éviter les longues nuits Netflix + écran allumé !

---

## Comment ça fonctionne ?

C’est un **script batch (.bat)** — un petit programme Windows qui exécute des commandes système.
Aucune installation nécessaire : il suffit de le lancer, et il fait le compte à rebours avant de mettre en veille ou d’éteindre la machine.

---

## Utilisation

1. **Téléchargez** le fichier `.bat`
2. **Faites un clic droit** dessus → “Modifier”
3. Repérez la ligne :

   ```bat
   set /a seconds=2600
   ```
4. Remplacez `2600` par la durée souhaitée (en secondes).
   Par exemple :

    * `900` = 15 minutes
    * `3600` = 1 heure
    * `7200` = 2 heures
5. **Enregistrez**, puis **double-cliquez** sur le fichier pour le lancer.
6. L’écran affichera un décompte avant la mise en veille (ou l’arrêt).

---

## Deux versions disponibles

| Action          | Commande utilisée                                 | Fichier              |
| --------------- | ------------------------------------------------- | -------------------- |
| Mise en veille | `rundll32.exe powrprof.dll,SetSuspendState 0,1,0` | `sleep_timer.bat`    |
| Extinction    | `shutdown /s /t 0`                                | `shutdown_timer.bat` |

---

## Remarques

* Fonctionne uniquement sur **Windows**
* Aucune installation ou droit admin requis
* Vous pouvez personnaliser les messages ou le visuel du timer facilement

---

## Idée future

Faire une version avec une **interface graphique (C# ou Python)** pour régler le temps directement sans modifier le code.

---

## Auteur

Projet perso réalisé par **Samuel Baudry**

> Parce qu’il faut bien dormir… même quand Netflix ne s’arrête jamais 
