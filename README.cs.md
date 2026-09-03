# MartinMatousek Vaire

*English: [README.md](README.md)*

Homebrew tap pro [Vaire](https://github.com/MartinMatousek/Vaire),
automatický sledovač času pro macOS s integrací Claude Code.

## Co umí

- **Automaticky sleduje čas** z Claude Code sessions přes
  `SessionStart`/`SessionEnd` hooky — žádné ruční spouštění/zastavování,
  když pracuješ s Claude Code.
- **Ruční start/stop** pro jednotlivé projekty z menu baru, pro práci mimo
  Claude Code.
- **Týdenní pohled** s rozšiřitelnou časovou osou, běžící/dokončené bloky
  vizuálně odlišené, drag-and-drop mezi dny a inline úpravy času, poznámek
  a odhadů pracnosti.
- **Odhady úspory času** — zaznamenává, jak dlouho by task trval bez AI,
  porovnané s reálně naloggovaným časem, aby bylo vidět přidanou hodnotu.
- **Ukazatel postupu v menu baru** a desktopový widget s dnešními
  odpracovanými hodinami vůči dennímu cíli.
- **Průvodce dokončením dne/týdne**, který krok za krokem projde kratší
  dny a navrhne nezalogované commity, prodloužení bloku nebo ruční záznam.
- **Nahrání do Trask** (volitelné) — poloautomaticky zaloguje čas do
  vlastního timesheetu Trask přes okno Chrome, které zkontroluješ a
  potvrdíš, s volitelným automatickým vyplněním přihlášení přes 1Password.

## Instalace

```
brew install --cask martinmatousek/vaire/vaire
```

Nebo nejdřív tapni a pak nainstaluj:

```
brew tap martinmatousek/vaire
brew install --cask vaire
```

Nebo v `brew bundle` `Brewfile`:

```ruby
tap "martinmatousek/vaire"
cask "vaire"
```

Vaire není notarizovaný, takže macOS zablokuje první spuštění:

1. Zkus Vaire otevřít — Gatekeeper to odmítne a nenabídne přímý obchvat.
2. Jdi do **Nastavení systému → Soukromí a zabezpečení**, sjeď dolů a
   klikni na **Přesto otevřít** vedle upozornění na Vaire.
3. Potvrď v dialogu, který se objeví. Vaire pak už bude spouštět normálně.

Nastavení Claude Code hooků, kontrolní tok importu z gitu, průvodce
dokončením dne/týdne, nahrávání do Trask a přepínání jazyka — viz
[hlavní README](https://github.com/MartinMatousek/Vaire#readme).

## Dokumentace

`brew help`, `man brew` nebo [dokumentace Homebrew](https://docs.brew.sh).
