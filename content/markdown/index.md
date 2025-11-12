---
title: "Markdown et Obsidian"
---

## En guise d'introduction

Markdown est un **langage de balisage léger** facile à lire et à écrire </br>crée en 2004 par [John Gruber](https://fr.wikipedia.org/wiki/John_Gruber)

Philosophie de Markdown ([selon son créateur](https://daringfireball.net/projects/markdown/syntax)) :
> *Un document formaté en Markdown doit pouvoir être publié tel quel, en texte brut, sans donner l’impression d’avoir été structuré par des balises ou des instructions de formatage.* [...]
>
>*La syntaxe Markdown est conçue dans un seul but : être utilisée comme format d'écriture pour le web.*

## Le langage Markdown

### La mise en page de base<br>

- pour mettre du **texte en gras** : `**texte en gras**`
- pour mettre du *texte en italique* : `*texte en italique*`
- pour mettre du ***texte en gras et en italique*** : `***texte en gras et en italique***`
- pour mettre du ~~texte barré~~ : `~~texte barré~~`

{{< alert icon="lightbulb" >}}
Les raccourcis classiques s'appliquent dans Obsidian ; un `Ctrl + B` affichera du **texte en gras**, un `Ctrl + I` du *texte en italique*, etc.
{{< /alert >}}


### Les titres

Pour structurer son document, il suffit d'écrire un ou plusieurs `#` `+ espace`.

Ainsi,

```
# Titre de niveau 1
## Titre de niveau 2
### Titre de niveau 3
```
donnera

<img src="/img/titre_1.gif">

Dans Obsidian, un plan est automatiquement généré (onglet `Plan de nom de votre note`), dans le panneau de droite, permettant de naviguer dans votre note


### Les listes, blocs, notes de bas de page et commentaires

- Il est possible d'établir des listes numérotées. Il suffit de saisir un chiffre suivi d'un point. Le saut à la ligne permet automatiquement de passer au chiffre suivant. La touche `Tab` permet de créer des sous-titres :

<img src="/img/titre_2.gif">

- Des blocs de ciation peuvent être générée, en faisant précéder le texte d'un chevron `>` :

<img src="/img/titre_3.gif">

## Spécificités d'Obsidian

Les éléments présentés plus haut sont applicables dans Obsidian. Quelques particularités liées au fonctionnement du logiciel sont à noter.

### Encadrés

Obsidian propose d'intégrer des encadrés, aussi appelés `Callouts`, pour mettre en forme ses notes avec des panneaux dépliants. Ils permettent de mettre en avant des informations sous forme de panneaux déroulants et des couleurs.

La liste des différents encadrés est à retrouvé sur le [site d'Obsidian](https://help.obsidian.md/callouts).

{{< alert cardColor="#e63946" iconColor="#1d3557" textColor="#f1faee" >}}
**Attention !** Les encadrés sont propres à Obsidian, et ne sont pas compris par [Pandoc](/tutos/export/#solution-n2--pandoc-le-couteau-suisse) pour un éventuel export en Word. Si vous souhaitez exporter vos notes, pensez à rester simple dans l'utilisation de votre langage Markdown !
{{< /alert >}}

### Liens

Le format Markdown permet d'établir des liens entre les fichiers. Pour ce faire, il suffit de saisir `[[` pour qu'une liste déroulante apparaise, et de sélectionner la note à lier :

<img src="/img/lien_1.gif">

On peut aller plus loin, et pointer directement un titre ou un sous-titre précis, en rajouter un `#` à la fin du lien :

<img src="/img/lien_2.gif">

L'affiche du lien vers la note liée est personnalisable, en ajoutant une barre verticale `|` (`Alt gr + 6` sur votre clavier) :

<img src="/img/lien_3.gif">

Pour afficher une note externe, il suffit d'ajouter un appel avec un `!` devant les doubles crochets :

<img src="/img/lien_4.gif">

Cet appel peut-être utiliser pour insérer des images présentes dans votre coffre ou des [bases](/bases/#bases) :

<img src="/img/lien_5.gif">

{{< alert icon="fire" cardColor="#e63946" iconColor="#1d3557" textColor="#f1faee" >}}
**Attention !** En cas d'export vers un fichier Word, Pandoc ne pourra pas établir de lien avec les autres notes (tout simplement parce qu'il ne sait pas le faire !). Les crochets `[[` `]]` apparaîtront dans votre document convertit. Il faudra penser à effectuer un " chercher-remplacer" dans Word et de remplacer les crochets par un caractère vide.
{{< /alert >}}

## Raccourcis et aide-mémoire

|Markdown|Rendu|
|-|-|
|`# Titre 1`|Titre 1|
|`## Titre 2`|Titre 2|
|`*italique*` ou `_italique_`|*italique*|
|`**gras**`|**gras**|
|`***gras italique***`|_**gras italique**_|
|`XIX^e^` |XIX<sup>e</sup> |
|`[hyperlien](url)`|[hyperlien]()|
|`![alt text](image.jpg)`|![width:40](icono/2023_Obsidian_logo.svg.png)|