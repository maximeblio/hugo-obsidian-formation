---
title: "Intégrer Zotero avec Zotlit"
---

Les avantages de lier Obsidian et Zotero sont nombreux, pour n’en citer que quelques uns :

- **création de note de lecture pour chaque document présent dans Zotero**
- **utilisation d’une clef de citation unique**, qui permet, lors d’une rédaction, de faire un appel bibliographique de la note de lecture sous un format bibliographique choisi
- **affichage des références bibliographiques** utilisées dans la note courante
- **navigation facilitée entre les logiciels Zotero et Obsidian** :
	- il est possible depuis Zotero d’ouvrir directement sa note de lecture
	- inversement, depuis Obsidian, il est possible de venir pointer la référence dans Zotero
- repérer dans Zotero les références bibliographiques qui font l’**objet d’une note de lecture dans Obsidian**

{{< alert icon="fire" cardColor="#e63946" iconColor="#1d3557" textColor="#f1faee" >}}
Avant toute chose, pensez à autoriser les applications tierces à communiquer avec Zotero. Pour ce faire, cliquez sur `Édition` puis `Paramètres`. Cliquez ensuite sur l’onglet `Avancé` puis cochez `Autoriser d'autres applications sur cet ordinateur à commuiquer avec Zotero`
{{< /alert >}}

## Quelques installations à faire au-préalable

Pour assurer une utilisation la plus fluide et complète possible, je vous conseille d’installer en plus :

- [Pandoc](https://pandoc.org/) sur votre ordinateur
- Le module [Better BibTeX](https://retorque.re/zotero-better-bibtex/installation/index.html) dans Zotero

## Connexion entre Obsidian et Zotero

Installer via le menu **Modules complémentaires** l’extension **Zotlit**

Une fois le module complémentaire installé, un onglet va s’ouvrir dans Obsidian, qui vous indique les différentes étapes à suivre.

- normalement, Zotlit va automatiquement trouver votre bibliothèque Zotero
- vous devez pointer le dossier vers lequel les notes de lecture seront créées et exportées dans votre Obsidian. Ici, nous allons simplement créer un dossier intitulé « Notes de lecture » :



- vous devez également installer le module complémentaire **dans Zotero** qui s’intitule **Zotlit Companion**. Ce module permet de garder Obsidian et Zotero synchronisés : tous les changements dans Zotero seront ainsi mis à jour dans Obsidian.

## Paramétrage du module

### Paramétrage de base

Avant tout chose, il convient de faire quelques paramétrages de base dans cette nouvelle extension :




### Explorer les métadonnées Zotero, créer des profils d’import

Comment fonctionne Zotlit ? C’est assez simple : **le plugin va venir récupérer un modèle, dans lequel sont paramétrés toutes les variables que nous voulons importer depuis Zotero**. Il peut s’agir :

- du nom de l’auteur ;
- du titre de l’article ou du livre ;
- de la date de publication ;
- du résumé ;
- etc.

bref, de toutes les informations qui sont collectées et indexées dans Zotero. 

Il nous convient donc de sélectionner les métadonnées intéressantes pour nous, qui seront injectées dans les notes de lecture que nous allons par la suite créer.

Pour explorer les métadonnées disponibles dans Zotero via Zotlit, allez dans les préférences du plugin, puis `Literature note profiles` et sur le logo avec le petit crayon dans l’encart `Defaut`.

Une fenêtre s’ouvre. Cliquez à droite sur les accolades `{ }` ouvrant le champ `Fields`, puis sur le logo de l’épingle pour afficher les métadonnées.

Zotlit vous propose des ressources génériques (articles, livres, thèses) mais également des éléments présents dans votre propre Zotero.


{{< alert icon="lightbulb" >}}
Lors de la création d’une note de lecture, si vous souhaitez que les auteurs et les autrices apparaissent avec des liens dans les propriétés, vous pouvez, dans le modèle d’export, insérer ce code :

```
zt.creators | where: "role", "author" | map: "fullName" | join: "]]§[[" | prepend: "[[" | append: "]]" | split: "§"
```

Une fois la note de lecture créée, vous pourrez directement cliquez sur le nom d’un.e auteur.e pour créer / aller sur sa fiche.
{{< /alert >}}


### Importer des commentaires sous forme de note de Zotero dans Obsidian (note parente)

**Zotero offre la possibilité de prendre des notes directement dans le logiciel de gestion bibliographique**. Les fonctionnalités sont très limitées - cela ressemble à un simple post-it numérique - mais il peut parfois être pratique de prendre quelques notes dans Zotero.



**Il est possible d’importer cette note Zotero dans Obsidian** ; ces note parente (ou **child note** en anglais) sont en fait gérées comme des pièces jointes à la note de lecture principale. Plusieurs moyens sont envisageables pour les créer :

#### Depuis Zotero

Depuis Zotero, il suffit de faire un clic-droit sur une note parente, puis de sélectionner `Zotlit > Import Selected Note`. Cette pièce jointe va s’ouvrir dans Obsidian directement.



#### Depuis Obsisian

Lorsque vous êtes sur une note de lecture ouverte, appelez la palette de commande (`Ctrl + P`) et cherchez `Zotlit : Import child notes from Zotero`. Une fenêtre de validation va s’ouvrir vous indiquant la ou les note.s parente.s à importer dans votre coffre.

#### Mettre à jour vos notes parentes

Si vous continuez à prendre des notes dans Zotero, la synchronisation n’est pas automatique avec les notes parentes importées dans Obsidian. Vous devez donc forcer une mise à jour pour que la note parente soit le plus à jour possible.

L’opération est assez simple : je rajoute ici du texte dans une note Zotero :

Dans Obsidian, sur la note parente, je clique sur les trois points en haut à droite du menu de la note, puis je clique sur `Overwrite imported note`. Il est possible En passant par la palette de commande (`Ctrl + P`), je cherche `Zotlit : Overwrite imported note`

Le texte se met alors à jour.

{{< alert icon="fire" cardColor="#e63946" iconColor="#1d3557" textColor="#f1faee" >}}
La synchronisation des notes ne se fait que dans un sens : de Zotero vers Obsidian. Vous ne pouvez pas modifier du texte dans votre note Obsidian pour qu’elle soit ensuite mise à jour dans Zotero
{{< /alert >}}

{{< alert icon="lightbulb" >}}
Si vous utilisez souvent les notes dans Zotero, pensez à intégrer la synchronisation dans votre *workflow* autant de fois que nécessaire
{{< /alert >}}

#### Afficher dans votre note de lecture les **child notes**

Par défaut, aucun lien n’est créé entre votre note de lecture principale et les potentielles notes parentes importées de Zotero.

## Citer des références dans vos notes

Au-delà de la possibilité de créer des notes de lecture dans Obsidian, **ZotLit vous permet également de citer des références bibliographiques lors de votre phase de rédaction**.

Lors de la saisie de votre texte, si vous devez faire un appel de citation, saisissez `[@` pour qu’un menu déroulant apparaisse, dans lequel vous trouverez les dernières notes de lecture ouverte. Vous pouvez également faire une recherche par titre ou par auteur pour chercher une référence.

{{< alert icon="lightbulb" >}}
**Il n’est pas obligatoire d’avoir créé une note de lecture pour faire un appel de citation.** Zotlit va venir chercher dans votre bibliothèque Zotero toutes les entrées bibliographiques disponibles.
{{< /alert >}}

Par défaut, c’est le style CSL **Chicago (auteur-date)** qui va formatter votre citation dans le corps du texte. Vous pouvez modifier le style CSL dans les propriétés de ZotLit. Lorsque vous allez sortir de la sélection, la citation va donc se formater avec un appel dans le texte de la citation.

Si vous survoler la souris sur la citation soulignée, une petite fenêtre de dialogue va s’ouvrir, dans laquelle vous allez pouvoir :

- ouvrir la note de lecture dans Obsidian (si elle existe)
- ouvrir Zotero pour afficher la ressource bibliographique
- ouvrir la vue Zotero dans Obsidian via le plugin Zotlit

Si votre citation pointe vers une page précise d’une ressource documentaire, vous pouvez la signaler dans l’appel de citation. Pour cela revenez entre les crochet `[` et, après le dernier caractère de la clef de citation, faite `Espace` puis ajouter `p. X`, sans virgule :


Au moment de l’export de votre bibliographie, quelque soit le style CSL Zotero choisit, la page apparaîtra correctement formatée.

## Exporter vos notes avec des références bibliographiques

Le plugin prévoit un export simplifier de texte avec des références bibliographiques présentes en son sein. Pour ce faire, appelez la palette de commande `Ctrl + P` puis chercher `Zotlit : Export note with citations`.

Une fenêtre de dialogue s’ouvre, dans laquelle vous allez pouvoir choisir :

- le format de sortie du document (vous pouvez choisir entre le format `Word` ou le format `Web`)
- le style CSL Zotero à l’export
- le dossier d’exportation (par défaut, cela sera votre coffre)

{{< alert icon="fire" cardColor="#e63946" iconColor="#1d3557" textColor="#f1faee" >}}
Attention ! Cette fonctionnalité est assez limité, elle permet simplement un export textuel. Pour un export avec des images et des ressources bibliographiques, voir cet article sur les exports avancés.
{{< /alert >}}

## Repérer en un clin d’œil si une référence dans Zotero dispose d’une fiche dans Obsidian

### Installation d’un module

Au-préalable, vous devez installer le module pour Zotero **[MarkDB-Connect](https://github.com/daeh/zotero-markdb-connect)**. Concrètement, ce module va scanner votre dossier où se trouve vos notes de lecture pour le formaliser sur Zotero.

D’un coup d’oeil, vous pourrez voir les références qui disposent d’une fiche de lecture dans votre coffre. Cela ce formalise dans cet exemple par la présence des petites balises violettes :

Pour installer ce module, rendez-vous sur [cette page web](https://github.com/daeh/zotero-markdb-connect/releases/latest), puis
- Téléchargez le plugin (le fichier `.xpi`) ;
- Ouvrez Zotero, puis cliquez sur `Outils` puis `Extensions` ;
- Cliquez sur la roue crantée puis sur ``Install Add-on From File...``, puis sélectionnez le fichier `.xpi` précédemment téléchargé sur votre ordinateur ;
- Redémarrer Zotero

### Paramétrage et utilisation du plugin

Cochez la puce `Custom File Filter`, et vérifier que les valeurs indiquées dans le champ soient les suivantes : `^.+\.md$` (il faut généralement enlever uniquement le `@`)