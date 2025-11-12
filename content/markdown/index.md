---
title: "Markdown et Obsidian"
---

## En guise d'introduction

Markdown est un **langage de balisage léger** facile à lire et à écrire crée en 2004 par [John Gruber](https://fr.wikipedia.org/wiki/John_Gruber)

Philosophie de Markdown ([selon son créateur](https://daringfireball.net/projects/markdown/syntax)) :
> *Un document formaté en Markdown doit pouvoir être publié tel quel, en texte brut, sans donner l’impression d’avoir été structuré par des balises ou des instructions de formatage.* [...]
>
>*La syntaxe Markdown est conçue dans un seul but : être utilisée comme format d'écriture pour le web.*

Le langage Markdown permet de se **concentrer sur l'écriture d'un texte** tout en **se libérant des distractions du traitement de texte classique**.

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

Pour structurer son document, il suffit d'écrire un ou plusieurs `#` suivi d'un `espace`.

Ainsi,

```
# Titre de niveau 1
## Titre de niveau 2
### Titre de niveau 3
```
donnera

<img src="/img/titre_1.gif">

Dans Obsidian, un plan est automatiquement généré (onglet `Plan de nom de votre note`), dans le panneau de droite, permettant de naviguer dans votre note


### Les listes, blocs de citation, et autres éléments

- Il est possible d'établir **des listes numérotées**. Il suffit de saisir un chiffre suivi d'un point. Le saut à la ligne permet automatiquement de passer au chiffre suivant. La touche `Tab` permet de créer des sous-listes :

<img src="/img/titre_2.gif">

- Des **blocs de ciation** peuvent être générés, en faisant précéder le texte d'un chevron `>` :

<img src="/img/titre_3.gif">

- Pour insérer une **note de bas de page**, il faut insérer `^[1]` dans le texte à l'endroit désiré. La note est automatiquement insérée en fin de document.

<img src="/img/bas_de_page_1.gif">

{{< alert icon="lightbulb" >}}
Le plugin [**Footnote Shortcut**](https://github.com/MichaBrugger/obsidian-footnotes) assure une meilleure gestion des notes de bas de page
{{< /alert >}}<br>
{{< alert icon="lightbulb" >}}
Il est possible de **paramétrer un raccourci clavier** dans les paramètres généraux pour gagner en fluidité.
{{< /alert >}}

- Enfin, vous pouvez **ajouter des commentaires** qui ne seront pas visibles en mode lecture ou à l'exportation de votre document, en balisant votre texte de `%%`. Cette fonction est pratique pour pointer des paragraphes à revoir, noter des idées ou des commentaires généraux :

<img src="/img/commentaires_1.gif">

## Spécificités d'Obsidian

Les éléments présentés plus haut sont applicables dans Obsidian. Quelques particularités liées au fonctionnement du logiciel sont à noter.

### Encadrés

Obsidian propose d'intégrer des encadrés, aussi appelés `Callouts`, **pour mettre en forme ses notes**. Ils permettent de mettre en avant des informations sous forme de panneaux déroulants et d'utiliser des couleurs.

<img src="/img/callout_1.gif">

Il est possible de personnaliser l'intitulé de l'encadré et de rajouter des informations :

<img src="/img/callout_2.gif">

En ajoutant un `-` après l'appel du callout, votre encadré se dote d'un ascenseur :

<img src="/img/callout_3.gif">

La liste des différents encadrés est à retrouver sur le [site d'Obsidian](https://help.obsidian.md/callouts).

{{< alert cardColor="#e63946" iconColor="#1d3557" textColor="#f1faee" >}}
**Attention !** Les encadrés sont propres à Obsidian, et ne sont pas compris par [Pandoc](/tutos/export/#solution-n2--pandoc-le-couteau-suisse) pour un éventuel export en Word. Si vous souhaitez exporter vos notes, pensez à rester simple dans l'utilisation de votre langage Markdown !
{{< /alert >}}

### Liens

Le format Markdown permet d'**établir des liens entre les fichiers**. Pour ce faire, il suffit de saisir `[[` pour qu'une liste déroulante apparaise, et de sélectionner la note à lier :

<img src="/img/lien_1.gif">

On peut aller plus loin, et pointer directement un titre ou un sous-titre précis, en rajouter un `#` à la fin du lien :

<img src="/img/lien_2.gif">

L'affiche du lien vers la note liée est personnalisable, en ajoutant une barre verticale `|` (`Alt gr + 6` sur votre clavier) :

<img src="/img/lien_3.gif">

Pour afficher une note externe, il suffit d'ajouter un appel avec un `!` devant les doubles crochets :

<img src="/img/lien_4.gif">

Cet appel peut-être utiliser pour insérer des images présentes dans votre coffre ou des [bases de données](/bases/#bases) :

<img src="/img/lien_5.gif">

**Pour résumer :**

- Lien simple : Ajoutez la syntaxe : `[[Nom de la Note]]`

- Lien vers un titre : Ajoutez la syntaxe : `[[Nom de la Note#Titre de section]]`

- Lien personnalisé : Ajoutez la syntaxe : `[[Nom de la Note|Texte affiché]]`

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
|`![alt text](image.jpg)`|![width:10](/img/2023_Obsidian_logo.svg.png)|