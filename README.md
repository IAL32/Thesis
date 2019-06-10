# Particle Swarm Optimization (PSO) for single-cell data

## Strumenti di sviluppo
### Tesi
Per la stesura della tesi è stato usato l'editor [Visual Studio Code](https://github.com/Microsoft/vscode/) con l'ausilio delle seguenti estensioni:
* [Latex Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) per la compilazione automatizzata del PDF
* [Bracket Pair Colorizer](https://marketplace.visualstudio.com/items?itemName=CoenraadS.bracket-pair-colorizer) per evitare di perdermi tra le parentesi come su Lisp

#### Istruzioni di compilazione
Assumendo di aver installato e configurato gli strumenti sopramenzionati, seguono le istruzioni di compilazione.

Alle impostazioni dell'editor, va modificata la voce relativa alle recipes seguente:
```json
    "latex-workshop.latex.tools": [
        {
            "name": "latexmk",
            "command": "latexmk",
            "args": [
                "--shell-escape", // for tikzexternalize
                "-synctex=1",
                "-interaction=nonstopmode",
                "-file-line-error",
                "-pdf",
                "-outdir=%OUTDIR%",
                "%DOC%"
            ],
            "env": {}
        }
    ]
```
Che è sostanzialmente uguale alla recipe di default, ma viene aggiunto il parametro `--shell-escape` al fine di abilitare la compilazione accelerata dei grafici `tikz`.

### Algoritmo PSO
Viene sempre utilizzato l'editor VSCode, ma non sono stati adottati accorgimenti particolari per compilare correttamente tutto. Al momento del rilascio di questa tesi, l'algoritmo sarà pubblicamente visibile al seguente link: [IAL32/pso-cancer-evolution](https://github.com/IAL32/pso-cancer-evolution)