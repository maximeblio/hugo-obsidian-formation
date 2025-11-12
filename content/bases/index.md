---
title: "Les modules de base"
---



## Vue graphique

Obsidian propose une vue graphique des notes présentes dans son coffre. Prenant l'apparence de constellations, cette vue permet de voir visuellement les connexions entre les notes, et les différents pôles qui se créent selon les associations.

![Vue Graphique](/img/graph.png)

Il existe deux vues graphiques distinctes :
- la `Vue graphique`, que l'on peut afficher via le ruban latéral gauche, est une vue globale de **l'ensemble de ses notes**
- la `Vue graphique autour du fichier courant`, que l'on retrouve via la palette de commande (`Ctrl + P`) ou dans les options de la note, affiche les liens **uniquement de la note ouverte**

<img src="/img/graph_2.gif">

Vous pouvez attribuer des couleurs à des groupes pour que l'affichage soit encore plus visuel. Pour l'exemple qui suit, je vais créer un groupe pour mes notes quotidiennes :

<img src="/img/graph_3.gif">

## Canvas

Canvas est un outil pour la **prise de note visuelle**. Il permet, sur un tableau virtuel, de disposer des notes et de les connecter entre elles. Permettant de déployer une **carte heuristique**, il est possible d'y insérer des notes, des pièces jointes ou des pages web.

Pour créer un Canvas, il vous suffit de cliquer dans le ruban latéral gauche sur `Créer une nouvelle toile`, ou de passer par la palette de commande `Ctrl + P` et de rechercher `Canvas`.

<img src="/img/canvas_1.gif">

<img src="/img/canvas_2.gif">

{{< alert icon="lightbulb" >}}
**Astuce :** vous pouvez télécharger le plugin [Advanced Canvas](https://github.com/Developer-Mike/obsidian-advanced-canvas) pour débloquer de nouvelles fonctionnalités.
{{< /alert >}}

## Note quotidienne

Obsidian permet de créer une **note quotidienne** en fonction de la date : elle peut vous servir de post-it numérique, de liste de tâches, de journal de découverte. Associée aux plugins [**Calendar**](/plugins/#calendar) et [**Day Planner**](/plugins/#day-planner), elle permet d'organiser sa journée.

Dans le ruban de gauche, cliquez sur `Ouvrir la note quotidienne`, ou bien passez par la palette de commande `Ctrl + P`.

{{< alert icon="lightbulb" >}}
**Astuce :** par défaut, Obsidian crée une note quotidienne vide nommée d'après la date du jour sous le format YYYY-MM-DD. Il est possible de modifier ce format via les paramètres généraux du logiciel.
{{< /alert >}}

<img src="/img/daily_1.gif">

Si vous souhaitez classer vos notes quotidiennes dans un dossier spécifique, et les organiser automatiquement en fonction du format de la date, c'est possible. Voici un exemple :

<img src="/img/dayli_2.gif" style="width:150px;">

Dans les paramètres, vous devez pointer le dossier qui contiendra l'ensemble de vos notes quotidiennes, et indiquer dans le champ `Format de la date` le format suivant :

```
YYYY/MM-MMMM/YYYY-MM-DD-dddd
```
Il est également possible de définir un modèle qui sera automatiquement chargé à chaque création d'une note quotidienne.

<img src="/img/dayli_3.gif">

## Insérer des modèles

La gestion des modèles permet de gagner du temps dans la création de ses notes et d'harmoniser les métadonnées et le contenu. Les étapes pour mettre en place un modèle de réunion sont décrites [ici](/tutos/modeles). Le principe est le même quelle que soit la nature de la note.

## Bases

{{< alert cardColor="#e63946" iconColor="#1d3557" textColor="#f1faee" >}}
**Attention :** le module Bases a été déployé récemment, la traduction en français n'est pas encore opérationnelle. 
{{< /alert >}}

`Bases` est un module permettant de créer des bases de données dans Obsidian, à partir des métadonnées renseignées dans vos notes. Les bases étant un dérivé des notes (et donc, locales), l'utilisation est extrêment rapide, contrairement à la création de bases de données sur Notion par exemple.

Pour créer une base, il suffit de cliquez dans le ruban latéral sur `Create new base`, ou de passer par la palette de commande `Ctrl + P`.

<img src="/img/bases_1.gif">

Par défault, la nouvelle base créée va afficher toutes vos notes présentes dans votre coffre. Il s'agit maintenant de filtrer les métadonnées selon le résultat que l'on souhaite obtenir.

### Cas pratique : afficher les formations suivies

Nous allons voir ici comment afficher dans une base toutes les notes en lien avec des formations suivies. Après avoir créé une base, je peux déjà la renommer :

<img src="/img/bases_2.gif">

Cliquez ensuite sur `Filter` ; pour ma part, toutes les notes que je détiens sur des formations auxquelles j'ai assisté se trouvent dans le même dossier, que je vais venir sélectionner ici :

<img src="/img/bases_3.gif">

Je peux maintenant venir afficher des colonnes en lien avec les métadonnées renseignées dans mes notes pour détailler ma requête, et les réageancer si besoin :

<img src="/img/bases_4.gif">

Je vais affiner ma requête en créant un sous-groupe, dans lequel je ne vais afficher que les formations en lien avec une préparation au concours. Pour ce faire, je vais renommer et dupliquer ma table actuelle : 

<img src="/img/bases_5.gif">

Et je vais venir renommer cette nouvelle table et appliquer un nouveau filtre. Des `hashtags` sont renseignés dans mes métadonnées pour affiner les thèmes abordés durant ces formations ; je vais venir sélection `#concours` :

<img src="/img/bases_6.gif">

Maintenant, si je souhaite afficher cette sous-base dans une note, je l'appelle avec `![[]]` et je viens rajouter un `#` pour pointer directement dessus :

<img src="/img/bases_8.gif">

{{< alert >}}
**Tutoriel détaillé :** pour paramêtrer l'affichage de vos notes créées et modifiées du jour dans une note quotidienne, c'est [ici](/tutos/notes/). 
{{< /alert >}}