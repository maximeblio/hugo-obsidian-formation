---
title: "Intégrer Zotero avec Zotlit"
---

{{< alert icon="lightbulb" >}} **Prérequis :** Obsidian 1.15.1 et plus (retélécharger l’installateur si besoin) avec Zotero 9 et plus, version de bureau uniquement {{< /alert >}}

{{< alert icon="fire" cardColor="#e63946" iconColor="#1d3557" textColor="#f1faee" >}} **Attention !** Si vous cherchez de la documentation sur le web, **le module ZotLit a connu une grande évolution entre la version 1 et la version 2**. Vérifiez bien, notamment pour les tutoriels les plus anciens, de quelle version il est question. {{< /alert >}}

{{< alert icon="lightbulb" >}} **Documentation :** pour explorer davantage les fonctionnalités de ZotLit, vous pouvez consulter [la documentation en ligne](https://zotlit.aidenlx.site/) (en anglais uniquement) {{< /alert >}}

Les avantages de lier Obsidian et Zotero sont nombreux, pour n’en citer que quelques-uns :

- **création d’une note de lecture pour chaque document présent dans Zotero**
- **utilisation d’une clé de citation unique**, qui permet, lors d’une rédaction, de faire un appel bibliographique à la note de lecture sous un format bibliographique choisi
- **affichage des références bibliographiques** utilisées dans la note courante
- **navigation facilitée entre les logiciels Zotero et Obsidian** :
    - il est possible, depuis Zotero, d’ouvrir directement sa note de lecture
    - inversement, depuis Obsidian, il est possible de pointer la référence dans Zotero
- repérage, dans Zotero, des références bibliographiques qui font l’**objet d’une note de lecture dans Obsidian**

{{< alert icon="fire" cardColor="#e63946" iconColor="#1d3557" textColor="#f1faee" >}} Avant toute chose, pensez à autoriser les applications tierces à communiquer avec Zotero. Pour ce faire, cliquez sur `Édition` puis `Paramètres`. Cliquez ensuite sur l’onglet `Avancé`, puis cochez `Autoriser d'autres applications sur cet ordinateur à communiquer avec Zotero` {{< /alert >}}

## Quelques installations à faire au préalable

Pour une utilisation la plus fluide et la plus complète possible, je vous conseille d’installer en plus :

- [Pandoc](https://pandoc.org/) sur votre ordinateur
- le module [Better BibTeX](https://retorque.re/zotero-better-bibtex/installation/index.html) dans Zotero

## Connexion entre Obsidian et Zotero

Installez le module **ZotLit** via le menu **Modules complémentaires**.

Une fois le module installé, un onglet s’ouvre dans Obsidian et vous indique les différentes étapes à suivre.

- normalement, ZotLit trouve automatiquement votre bibliothèque Zotero
    
- vous devez indiquer le dossier dans lequel les notes de lecture seront créées et exportées dans votre coffre Obsidian. Ici, nous allons simplement créer un dossier intitulé « Notes de lecture » :
    
- vous devez également installer, **dans Zotero**, le module complémentaire intitulé **ZotLit Companion**. Il permet de garder Obsidian et Zotero synchronisés : tous les changements effectués dans Zotero seront ainsi répercutés dans Obsidian.
    

## Paramétrage du module

### Paramétrage de base

Avant toute chose, il convient de faire quelques paramétrages de base dans ce nouveau module. ZotLit va en effet créer plusieurs fichiers liés aux modèles, et attend notamment que vous lui indiquiez le dossier qui accueillera toutes les notes de lecture :

1. Dans les paramètres du module, indiquez le dossier dans lequel vos notes de lecture seront créées. Ici, nous utiliserons sobrement un dossier `Notes de lecture`
    
2. Si vous souhaitez importer des notes prises dans Zotero lui-même, vous devez là aussi indiquer où ces fichiers seront créés. Ici, nous utiliserons un sous-dossier de « Notes de lecture » : `Notes de lecture/Notes Zotero`
    
3. Enfin, ZotLit va probablement générer des fichiers Markdown pour gérer les modèles. Je vous conseille de les centraliser dans votre dossier « Modèles ». Pour ce faire, allez dans `Advanced`, puis, dans la section `Template engine`, modifiez le chemin. Ici, nous utiliserons `Modèles/Zotlit/templates`
    

### Explorer les métadonnées Zotero, créer des profils d’import

Comment fonctionne ZotLit ? C’est assez simple : **le module va récupérer un modèle, dans lequel sont paramétrées toutes les variables que nous voulons importer depuis Zotero**. Il peut s’agir :

- du nom de l’auteur ;
- du titre de l’article ou du livre ;
- de la date de publication ;
- du résumé ;
- etc.

Bref, de toutes les informations collectées et indexées dans Zotero.

Il convient donc de sélectionner les métadonnées qui nous intéressent : elles seront injectées dans les notes de lecture que nous allons créer par la suite.

Pour explorer les métadonnées disponibles dans Zotero via ZotLit, allez dans les préférences du module, puis dans `Literature note profiles`, et cliquez sur l’icône en forme de crayon dans l’encart `Default`.

Une fenêtre s’ouvre. Cliquez, à droite, sur les accolades `{ }` ouvrant le champ `Fields`, puis sur l’icône d’épingle pour afficher les métadonnées.

ZotLit vous propose des ressources génériques (articles, livres, thèses), mais aussi des éléments présents dans votre propre Zotero. **Vous pouvez donc facilement sélectionner les champs utiles pour vous et voir l’aperçu de la future note de lecture** dans le panneau de droite, en fonction de vos besoins.

Par défaut, plusieurs champs sont déjà présents, en anglais :

- **title** pour le titre
- **related** pour les éléments du menu « Connexes » dans Zotero
- **collections**, qui indique le nom de la collection dans laquelle se trouve votre ressource dans Zotero
- **citekey** pour la clé unique de citation

**Vous pouvez aussi créer des profils d’import automatique en fonction de la nature de votre référence bibliographique.** Par exemple, il peut être intéressant d’ajouter l’ISBN pour un ouvrage, ou le nom de la revue dans laquelle un article est publié.

Pour ce faire, dans le menu `Literature note profiles`, cliquez sur le `+` dans la section `Other profiles`, et créez autant de profils que nécessaire. Chose intéressante, il est possible de déclencher automatiquement un profil en fonction du type de la ressource dans Zotero. Par exemple, un article scientifique importera automatiquement les bonnes métadonnées en fonction du déclencheur choisi.

Ainsi, pour poursuivre avec l’exemple de l’article scientifique, je vais dans le menu `Match` et j’indique le type d’item Zotero `journalArticle`. Pour chaque note de lecture créée à partir d’un article scientifique de Zotero, les champs de métadonnées présélectionnés s’appliqueront.

#### Quelques astuces

{{< alert icon="lightbulb" >}} **Nom d’auteur :** lors de la création d’une note de lecture, si vous souhaitez que **les auteurs et les autrices apparaissent sous forme de liens dans les propriétés**, ajoutez, dans les propriétés du profil, une entrée (par exemple avec la clé `auteurs`), puis saisissez le code suivant dans le champ d’expression (et non dans le champ de la clé) :

```
zt.creators | where: "role", "author" | map: "fullName" | join: "]]§[[" | prepend: "[[" | append: "]]" | split: "§"
```

Une fois la note de lecture créée, vous pourrez cliquer directement sur le nom d’un·e auteur·rice pour créer sa fiche ou y accéder. {{< /alert >}}

{{< alert icon="lightbulb" >}} Si vous modifiez les propriétés d’un profil (par exemple en ajoutant le DOI), les notes déjà créées ne changent pas d’elles-mêmes. Pour les mettre à jour, lancez `Zotlit : Create or update all literature notes` depuis la palette de commandes (`Ctrl + P`), ou utilisez la commande de mise à jour sur une seule note. {{< /alert >}}

{{< alert icon="lightbulb" >}} **Date d’ajout :** si vous souhaitez ajouter automatiquement une date dans vos notes de lecture, ajoutez dans le ou les profils d’import un champ `date d'ajout` avec l’expression suivante, qui reprend la date d’ajout de la référence dans Zotero :

```
zt.dateAdded | date: "%Y-%m-%d"
```

{{< /alert >}}

## Créer vos notes de lecture

Plusieurs manières s’offrent à vous pour créer des notes de lecture :

1. vous pouvez importer **l’ensemble de vos références Zotero** dans Obsidian en sélectionnant, depuis la palette de commandes (`Ctrl + P`), l’entrée `Zotlit : Create or update all literature notes` ; cette fonctionnalité est intéressante, mais peut atteindre ses limites si votre bibliothèque Zotero est très fournie
    
2. en cliquant sur l’icône de ZotLit dans le ruban à gauche, une copie de votre bibliothèque Zotero s’affiche. Vous pouvez l’explorer et créer ou ouvrir une note de lecture depuis le menu :
    
3. une autre manière efficace consiste à appeler, depuis la palette de commandes, `Zotlit : Open literature note quick switcher` ; une fenêtre de dialogue Obsidian s’ouvre, dans laquelle vous pouvez chercher directement une référence bibliographique. En appuyant sur `Entrée`, la note de lecture est créée
    
4. enfin, directement depuis Zotero, faites un `clic droit` sur la ressource, puis, dans `Zotlit`, cliquez sur `Create or Update Literature Note`
    

### Importer des notes Zotero dans Obsidian (notes filles)

**Zotero permet de prendre des notes directement dans le logiciel de gestion bibliographique.** Les fonctionnalités sont très limitées – cela ressemble à un simple post-it numérique – mais il peut parfois être pratique de prendre quelques notes dans Zotero.

**Il est possible d’importer ces notes Zotero dans Obsidian** ; ces notes filles (ou **child notes** en anglais) sont gérées comme des pièces jointes de la note de lecture principale. Plusieurs moyens sont possibles pour les importer :

#### Depuis Zotero

Depuis Zotero, faites un clic droit sur une note fille, puis sélectionnez `Zotlit > Import Selected Note`. La note s’ouvre alors directement dans Obsidian.

#### Depuis Obsidian

Lorsqu’une note de lecture est ouverte, appelez la palette de commandes (`Ctrl + P`) et cherchez `Zotlit : Import child notes from Zotero`. Une fenêtre de validation s’ouvre et vous indique la ou les notes filles à importer dans votre coffre.

#### Mettre à jour vos notes filles

Si vous continuez à prendre des notes dans Zotero, la synchronisation n’est pas automatique pour les notes filles déjà importées dans Obsidian. Vous devez donc forcer une mise à jour pour que la note fille soit à jour.

L’opération est assez simple : j’ajoute ici du texte dans une note Zotero :

Dans Obsidian, ouvrez la note fille, cliquez sur les trois points en haut à droite, puis sur `Overwrite imported note`. Vous pouvez aussi passer par la palette de commandes (`Ctrl + P`) et chercher `Zotlit : Overwrite imported note`.

Le texte se met alors à jour.

{{< alert icon="fire" cardColor="#e63946" iconColor="#1d3557" textColor="#f1faee" >}} Attention ! Cette commande **écrase** la note Obsidian : toute modification faite côté Obsidian sera perdue. {{< /alert >}}

{{< alert icon="fire" cardColor="#e63946" iconColor="#1d3557" textColor="#f1faee" >}} Attention ! **La synchronisation des notes ne se fait que dans un sens : de Zotero vers Obsidian.** Vous ne pouvez pas modifier le texte d’une note dans Obsidian pour qu’elle soit ensuite mise à jour dans Zotero. {{< /alert >}}

{{< alert icon="lightbulb" >}} Si vous utilisez souvent les notes dans Zotero, pensez à intégrer la synchronisation à votre _workflow_ aussi souvent que nécessaire. {{< /alert >}}

#### Afficher les notes filles dans votre note de lecture

Par défaut, aucun lien n’est créé entre votre note de lecture principale et les éventuelles notes filles importées depuis Zotero. Chaque note fille dispose toutefois d’une propriété `noteLink` : elle produit un lien Obsidian vers la note importée ou, à défaut, un lien vers la note dans Zotero.

Pour les faire apparaître, ajoutez le code suivant dans le corps de la note de vos profils :

```
{% for note in zt.notes %}
- {{ note.noteLink }}
{% endfor %}
```

## Citer des références dans vos notes

Au-delà de la création de notes de lecture dans Obsidian, **ZotLit vous permet également de citer des références bibliographiques pendant la rédaction**.

Lors de la saisie de votre texte, lorsque vous devez faire un appel de citation, saisissez `[@` : un menu déroulant apparaît, dans lequel vous trouverez les dernières notes de lecture ouvertes. Vous pouvez aussi chercher une référence par titre ou par auteur.

{{< alert icon="lightbulb" >}} **Il n’est pas obligatoire d’avoir créé une note de lecture pour faire un appel de citation.** ZotLit va chercher dans votre bibliothèque Zotero toutes les entrées bibliographiques disponibles. {{< /alert >}}

Par défaut, c’est le style CSL **Chicago (auteur-date)** qui met en forme la citation dans le corps du texte. Vous pouvez modifier le style CSL dans les paramètres de ZotLit. Lorsque vous sortez de la sélection, la citation se met en forme sous la forme d’un appel de citation dans le texte.

Si vous survolez la citation soulignée avec la souris, une petite fenêtre de dialogue s’ouvre, dans laquelle vous pouvez :

- ouvrir la note de lecture dans Obsidian (si elle existe)
- ouvrir Zotero pour afficher la ressource bibliographique
- ouvrir la vue Zotero dans Obsidian via ZotLit

**Si votre citation renvoie à une page précise d’une ressource documentaire, vous pouvez l’indiquer dans l’appel de citation.** Pour cela, placez-vous entre les crochets `[`, juste après le dernier caractère de la clé de citation, faites `Espace`, puis ajoutez `p. X`, sans virgule :

Au moment de l’export, quel que soit le style CSL Zotero choisi, la page apparaîtra correctement mise en forme.

## Exporter vos notes avec des références bibliographiques

**Le module prévoit un export simplifié d’un texte contenant des références bibliographiques.** Pour ce faire, appelez la palette de commandes (`Ctrl + P`), puis cherchez `Zotlit : Export note with citations`.

Une fenêtre de dialogue s’ouvre, dans laquelle vous pouvez choisir :

- le format de sortie du document (`Word` ou `Web`)
- le style CSL Zotero à l’export
- le dossier d’exportation (par défaut, votre coffre)

{{< alert icon="fire" cardColor="#e63946" iconColor="#1d3557" textColor="#f1faee" >}} Attention ! Cette fonctionnalité est assez limitée : **elle ne permet qu’un export textuel.** Pour un export avec des images et des ressources bibliographiques, voir l’article sur les exports avancés. {{< /alert >}}

## Repérer en un clin d’œil si une référence dans Zotero dispose d’une fiche dans Obsidian

### Installation du module MarkDB-Connect

Au préalable, vous devez installer dans Zotero le module **[MarkDB-Connect](https://github.com/daeh/zotero-markdb-connect)**. **Concrètement, ce module analyse votre coffre Obsidian pour repérer vos notes de lecture et les signaler dans Zotero.**

D’un coup d’œil, vous verrez les références qui disposent d’une fiche de lecture dans votre coffre. Elles sont signalées, dans cet exemple, par de petites balises violettes :

Pour installer ce module, rendez-vous sur [cette page web](https://github.com/daeh/zotero-markdb-connect/releases/latest), puis :

- téléchargez le module (le fichier `.xpi`) ;
- ouvrez Zotero, puis cliquez sur `Outils`, puis sur `Extensions` ;
- cliquez sur la roue crantée, puis sur `Install Add-on From File...`, et sélectionnez le fichier `.xpi` précédemment téléchargé sur votre ordinateur ;
- redémarrez Zotero.

### Paramétrage et utilisation du module

Dans les paramètres du module, cochez la case `Custom File Filter` et vérifiez que le champ contient la valeur suivante : `^.+\.md$` (il suffit généralement de retirer le `@`).