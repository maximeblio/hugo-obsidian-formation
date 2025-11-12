---
title: "Exporter ses notes"
---

Il est possible d'exporter ses notes dans différents formats pour pouvoir les imprimer ou les partager. Plusieurs solutions s'offrent à vous :

## Solution n°1 : la plus simple (et la plus limité)

Nativement, Obsidian propose l'export d'une note sous format PDF. Dans le menu de la note, cliquez sur `Exporter au format PDF`. Une boîte de dialogue s'ouvre avec différentes options proposées de mise en page ; elles sont très limitées. Gardez en tête que l'export PDF prendra les paramètres de mise en page de votre note comme valeur d'affichage : les couleurs et le style de la police par exemple.

**Cette solution est pratique, mais à ses limites si vous souhaitez travailler la mise en page de votre document final.**

## Solution n°2 : Pandoc, le couteau-suisse

Pandoc est un logiciel libre de conversion de documents numériques. Un plugin peut-être installé pour assurer des exports en format PDF (via `LaTeX`), Word, HTML, Power Point, et bien d'autres.

{{< alert cardColor="#e63946" iconColor="#1d3557" textColor="#f1faee" >}}
**Attention !** L'installation du plugin sur Obsidian doit s'accompagner de celle du logiciel [Pandoc](https://pandoc.org/) sur votre ordinateur.
{{< /alert >}}

Une fois le logiciel et le plugin instalés, ouvrez le panneau de commande (`Ctrl + P`), et cherchez Pandoc. La liste des exports possible va s'afficher.

### Word : utiliser un modèle pour l'export

Le fichier Word par défaut qui va être généré va reprendre les paramètres de base d'un `.docx` à l'ouverture (police, interligne, marge, etc.)

Il est possible, pour l'export vers Word, **d'utiliser un modèle pour que le document soit conforme à une charte spéficique**. Par exemple, vous pourrez y mettre un pied de page avec votre `Prénom Nom`, la `date` et le `nombre de page`. Vous pourrez également, pour les tableaux, les paragraphes et chaque niveau de titre, spécifier la taile de la police, l'interligne, la couleur etc.

Vous trouverez ici un modèle que vous pouvez dupliquer selon vos besoins ; il reprend la police utilisée à l'UT2J (`Century Gothic`), ainsi que le logo de l'université dans l'en-tête ainsi qu'un pied de page à personnaliser.

{{< button icon="download" href="/download/reference.docx" target="_blank" download="reference.docx" >}}
Télécharger le template
{{< /button >}}<br>


{{< alert cardColor="#e63946" iconColor="#1d3557" textColor="#f1faee" >}}
Vous pouvez modifier ce modèle, mais la modification des paramètres de mise en page doit se faire **uniquement** depuis les paramètres `Styles` de Word pour qu'il s'applique au modèle. Pandoc remplace en effet le contenu du document Word par le contenu de votre note.
{{< /alert >}}

### Les bonnes pratiques pour un export réussi

Quelques paramétrages sont nécessaires pour que vos exports aboutissent. Une fois tout ceci en place, l'export devrait fonctionner sans problème. 

#### Bien renseigner ses métadonnées

En préambule, **vous devez nommer correctement vos métadonnées** pour que certains champs soient directement intégré dans votre document Word. Ainsi :

- `title` = le titre qui 
- `author` = l'auteur, généralement vous
- `date` = la date à laquelle a eu une réunion par exemple

{{< alert cardColor="#e63946" iconColor="#1d3557" textColor="#f1faee" >}}
Veillez à bien écrire ces métadonnées en **anglais**. Pandoc n'intégrera pas ces éléments s'il ne reconnait pas ces champs précis.
{{< /alert >}}

#### Placer votre modèle au bon endroit

Pour que Pandoc trouve le modèle, il convient de le placer dans un dossier dédié. Dans la barre de recherche de l'explorateur Windows, saisissez `%appdata%`. Cherchez et ouvrez le dossier `pandoc`. Si le dossier est vide, créez un dossier `templates`, et collez-y votre modèle `.docx`.

#### Indiquer à Pandoc où trouver votre modèle

Nous devons maintenant indiquer à Pandoc quel

```
--reference-doc=C:/Users/votre.nom/AppData/Roaming/pandoc/templates/reference.docx --resource-path="C:/Users/votre.nom/le.chemin.de.votre.coffre" --standalone
```
- La commande `reference-doc`, comme son nom l'indique, **va pointer vers le document de référence** dans lequel Pandoc doit compiler votre note
- La commande `ressource path` **va chercher les médias liés à votre note**. Par exemple, si vous intégrez une image dans votre note, c'est cette commande qui ira chercher votre image et l'incorporera dans votre `.docx`
- La commande `standalone` **va venir implanter vos métadonnées dans votre document Word**.

{{< alert icon="lightbulb" >}}
**Astuce :** Veillez à rester simple dans la dénomination des dossiers de votre coffre. Évitez les espaces et les parenthèses pour éviter tout problème !.
{{< /alert >}}

#### Sélectionner un dossier d'export

Par défault, le plugin de Pandoc va exporter votre `.docx` dans le dossier où se trouve votre note. Si vous souhaitez modifier le chemin d'export, il suffit de le renseigner dans les paramètres du plugin :

#### Lancer votre export

Depuis la palette de commande `Ctrl + P`, chercher `Pandoc Word` et cliquer sur la ligne. **Votre document Word se trouvera dans le fichier cible, ou à défaut dans le dossier original de votre note Obsidian.**

