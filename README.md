# Statistik M2 Lernzettel

![License](https://img.shields.io/badge/license-CC--BY--NC--SA%204.0-blue)

> Lernzettel und R-Beispiele zur Vorbereitung auf das Modul M2 (Statistik) der FernUniversität in Hagen.
>
> Diese Unterlagen sind privat erstellt und nicht offiziell von der FernUniversität herausgegeben.

## Inhalte

### Vorhanden

**Deskriptive Statistik** (`notes/deskriptiv.qmd`)

- Häufigkeiten, Tabellen und Grafiken
- Skalenniveaus
- Lage- und Streuungsmaße
- Quantile, Perzentile und z-Transformation
- Kovarianz und Korrelation
- Kreuztabellen und Rangkorrelation
- Einfache Regression

**Inferenzstatistik und NHST** (`notes/NHST.qmd`)

- Wahrscheinlichkeit und Stichprobenverteilungen
- Konfidenzintervalle
- NHST, Fehlerarten und Power
- Effektgrößen
- t-Tests und einfaktorielle Varianzanalyse
- Inferenzstatistik von Korrelation und Regression
- F-Test und Chi-Quadrat-Test
- Bayes-Faktoren
- Bootstrap und Permutationstests

Die R-Beispiele stehen direkt in den Lernzetteln.

### Geplant

- Eigenständige R-Skripte in `examples/r-code/`
- Grafiken mit ggplot2

## Ziel

Kompakte Lernzettel für M2 → Verständnis statt Auswendiglernen.

- Herleitungen Schritt für Schritt
- jedes Verfahren mit R-Beispiel

## Struktur

| Ordner | Inhalt |
|---|---|
| `notes/` | Lernzettel und Erklärungen |
| `examples/r-code/` | R-Code-Beispiele (geplant) |
| `exports/` | gerenderte PDFs/HTML-Dateien |
| `scripts/`| ausführbare Skripts |

## Verwendete Datensätze

Es werden ausschließlich ein reproduzierbarer synthetischer Datensatz und frei verfügbare Beispieldatensätze verwendet, unter anderem:

- `mtcars`
- `PlantGrowth`

## Entwicklung

Dieses Projekt nutzt Nix Flakes, um eine reproduzierbare Entwicklungsumgebung bereitzustellen.

```bash
nix develop
```

Die benötigten R-Pakete werden automatisch bereitgestellt.

## Voraussetzungen

- Nix mit Flakes aktiviert
- Git

## Rendering mit Quarto

HTML-Version rendern:

```bash
quarto render notes/NHST.qmd
```

PDF rendern:

```bash
quarto render notes/NHST.qmd --to pdf
```

Alle Lernzettel als HTML und PDF:

```bash
./scripts/render.sh
```

## Lizenz

### Lernzettel und Texte

Alle Lernzettel, Erklärungen und Markdown-/Quarto-Dateien stehen unter:

Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International  
(CC BY-NC-SA 4.0)

→ teilen und bearbeiten mit Namensnennung, nicht kommerziell, Bearbeitungen unter derselben Lizenz

### Code-Beispiele

Alle Dateien im Ordner `examples/r-code/` stehen unter der MIT-Lizenz.

## Hinweis

Keine Uni-Datensätze, keine Musterlösungen. Alle Beispiele laufen mit den Datensätzen oben.

## Kontakt

Emilian Hahlbrock – [github.com/milisaur](https://github.com/milisaur)

- Fehler und Verbesserungen → Issue oder Pull Request
- Fragen und Nachhilfe → milisaur@proton.me
