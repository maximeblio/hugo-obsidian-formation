---
title: "Annoter des PDF"
---

L'annotation des fichiers PDF est nativement supportée par Obsidian, mais un plugin a apporté des fonctionnalités intéressantes. Je vous présente ici les deux solutions.

## Avec Obsidian

Une fois le PDF chargé dans votre coffre (un simple glisser-déposer suffit), Obsidian le lit automatiquement à son ouverture. **Créez ensuite une nouvelle note, et glissez-la vers la droite pour avoir en vis-à-vis le PDF et la note qui vous servira à l'annotation.** Vous pouvez l'intituler comme le PDF, et y rajouter des métadonnées.

<img src="/img/pdf_1.gif">

Lors de la lecture du PDF, vous pouvez sélectionner les passages qui vous intéressent, faire un `clic droit`, et cliquer sur `Copier comme citation`. Coller le contenu dans votre note : **il s'implante dans un bloc de citation avec un lien renvoyant vers le document PDF**. Vous pouvez ajouter vos remarques à tout moment. Multipliez la manipulation autant que nécessaire.

<img src="/img/pdf_2.gif">

Lorsque l'on clique sur un lien dans la note, **le PDF s'ouvre à l'endroit exact où la citation a été copiée**, et elle se retrouve surlignée en jaune. Ce surlignage n'est toutefois pas pérenne, il suffit que vous naviguiez ailleurs dans le PDF pour perdre le pointage.

<img src="/img/pdf_3.gif">

{{< alert cardColor="#e63946" iconColor="#1d3557" textColor="#f1faee" >}}
**Attention !** Voici la limite de l'annotation directe depuis Obsidian, il n'y a pas de liens retours (*backlinks*) depuis le PDF. C'est l'avantage d'utiliser `PDF++`, qui propose cette option.
{{< /alert >}}

## Avec le plugin PDF++

Les fonctionnalités de `PDF++` sont très riches, nous nous contenterons ici d'évoquer simplement l'annotation des PDF. Après avoir installé le plugin, ce sont les fonctionnalités de ce dernier qui seront chargées à chaque lecture de fichier PDF.

Par défaut, `PDF++` vous propose quatre couleurs de surlignage, que vous pouvez associer à des pratiques de prises de notes. Il est possible de rajouter ou de supprimer des couleurs dans les paramètres du plugin.

Revenons à l'annotation de notre PDF : sélectionnez un passage, et **cliquez sur une couleur de surlignage. Le lien de citation est automatiquement copié**, il vous suffit de le reporter dans votre note.

<img src="/img/pdf_4.gif">

En passant la souris sur les liens, un aperçu automatique du PDF s'ouvre :

<img src="/img/pdf_5.gif">

Dans le PDF, les passages surlignés, contrairement à la méthode développée plus haut, restent pérennes. **Ainsi, en faisant un `double clic`,  vous pouvez revenir sur votre note directement depuis le PDF.**

<img src="/img/pdf_6.gif">

{{< alert icon="lightbulb" >}}
Si les liens retours cliquables ne vous semblent pas pertinents dans votre utilisation, vous pouvez vous contenter des fonctionnalités de base d'Obisdian pour l'annotation de PDF.
{{< /alert >}}