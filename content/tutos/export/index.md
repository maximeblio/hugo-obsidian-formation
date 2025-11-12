---
title: "Exporter ses notes"
---

Il est possible d'exporter ses notes dans différents formats pour pouvoir les imprimer ou les partager. Plusieurs solutions s'offrent à vous :

## Solution n°1 : la plus simple (et la plus limitée)

Nativement, Obsidian propose l'export d'une note sous format PDF. Dans le menu de la note, cliquez sur `Exporter au format PDF`. Une boîte de dialogue s'ouvre avec différentes options de mise en page proposées ; elles sont très limitées. Gardez en tête que l'export PDF prendra les paramètres de mise en page de votre note comme valeur d'affichage : les couleurs et le style de la police par exemple.

**Cette solution est pratique, mais a ses limites si vous souhaitez travailler la mise en page de votre document final.**

## Solution n°2 : Pandoc, le couteau-suisse

Pandoc est un logiciel libre de conversion de documents numériques. Un plugin peut être installé pour assurer des exports en format PDF (via `LaTeX`), Word, HTML, PowerPoint et bien d'autres.

{{< alert cardColor="#e63946" iconColor="#1d3557" textColor="#f1faee" >}}
**Attention !** L'installation du plugin sur Obsidian doit s'accompagner de celle du logiciel [Pandoc](https://pandoc.org/) sur votre ordinateur.
{{< /alert >}}

Une fois le logiciel et le plugin instalés, ouvrez la palette de commande (`Ctrl + P`), et recherchez Pandoc. La liste des exports possibles va s'afficher.

### Word : utiliser un modèle pour l'export

Le fichier Word par défaut qui va être généré va reprendre les paramètres de base d'un `.docx` à l'ouverture (police, interligne, marge, etc.)

Il est possible, pour l'export vers Word, **d'utiliser un modèle pour que le document soit conforme à une charte spéficique**. Par exemple, vous pourrez y mettre un pied de page avec votre `Prénom Nom`, la `date` et le `nombre de pages`. Vous pourrez également, pour les tableaux, les paragraphes et chaque niveau de titre, spécifier la taile de la police, l'interligne, la couleur etc.

Vous trouverez ici un modèle que vous pouvez dupliquer selon vos besoins ; il reprend la police utilisée à l'UT2J (`Century Gothic`), ainsi que le logo de l'université dans l'en-tête ainsi qu'un pied de page à personnaliser.

{{< button href="/download/reference.docx" target="_blank" download="reference.docx" >}}
{{< icon "download" >}} Télécharger le template
{{< /button >}}<br>


{{< alert cardColor="#e63946" iconColor="#1d3557" textColor="#f1faee" >}}
Vous pouvez modifier ce modèle, mais la modification des paramètres de mise en page doit se faire **uniquement** depuis les paramètres `Styles` de Word pour qu'il s'applique au modèle. Pandoc remplace en effet le contenu du document Word par le contenu de votre note.
{{< /alert >}}

### Les bonnes pratiques pour un export réussi

Quelques paramétrages sont nécessaires pour que vos exports aboutissent. C'est un peu technique, mais une fois tout ceci en place, l'export devrait fonctionner sans problème. 

#### Bien renseigner ses métadonnées

En préambule, **vous devez nommer correctement vos métadonnées** pour que certains champs soient directement intégré dans votre document Word. Ainsi :

- `title` = le titre du document exporté
- `author` = l'auteur, généralement vous
- `date` = la date à laquelle a eu lieu une réunion par exemple

{{< alert cardColor="#e63946" iconColor="#1d3557" textColor="#f1faee" >}}
Veillez à bien écrire ces métadonnées en **anglais**. Pandoc n'intégrera pas ces éléments s'il ne reconnaît pas ces champs précis.
{{< /alert >}}

#### Placez votre modèle au bon endroit

Pour que Pandoc trouve le modèle, il convient de le placer dans un dossier dédié. Dans la barre de recherche de l'explorateur Windows, saisissez `%appdata%`. Cherchez et ouvrez le dossier `pandoc`. Si le dossier est vide, créez un dossier `templates`, et collez-y votre modèle `.docx`.

<img src="/img/pandoc_2.gif">

#### Téléchargez et placez votre filtre Lua

Même si l'affichage des dates de vos métadonnées est en format français (`JJ-MM-AAAA`), Pandoc les exporte par défaut au format anglo-saxon (`YYYY-MM-DD`) ; pour une cohérence linguistique et un aspect visuel plus littéraire, nous allons appliquer un `filtre Lua` pour que la date soit convertie en `JJ-mois-AAAA`

Tout d'abord, téléchargez le filtre :

{{< button href="/download/french_date_filter.lua" target="_blank" download="french_date_filter.lua" >}}
{{< icon "download" >}} Filtre Lua
{{< /button >}}<br>

Revenez dans votre dossier Pandoc, créez un dossier intitulé `lua` et coller le fichier que vous venez de télécharger.

#### Indiquer à Pandoc où trouver votre modèle

Nous devons maintenant indiquer au plugin Pandoc quelques indications : copiez le code ci-dessous **en remplaçant les emplacements en majuscules**, puis collez le contenu :

```
--reference-doc=C:/Users/VOTRE.NOM/AppData/Roaming/pandoc/templates/reference.docx --resource-path="C:/Users/VOTRE.NOM/LE.CHEMIN.DE.VOTRE.COFFRE" --standalone --lua-filter=C:/Users/VOTRE.NOM/AppData/Roaming/pandoc/lua/french_date_filter.lua
```
<img src="/img/pandoc_1.gif">

- la commande `reference-doc`, comme son nom l'indique, **va pointer vers le document de référence** dans lequel Pandoc doit compiler votre note
- la commande `resource path` **va chercher les médias liés à votre note**. Par exemple, si vous intégrez une image dans votre note, c'est cette comande qui ira chercher votre image et l'incorporera dans votre `.docx`
- la commande `standalone` **va venir implanter vos métadonnées dans votre document Word**.
- la commmande `lua-filter` va **appliquer le filtre pour que la date soit formatée au format francophone**.

{{< alert icon="lightbulb" >}}
**Astuce :** Veillez à rester simple dans la dénomination des dossiers de votre coffre. Évitez les espaces et les parenthèses pour éviter tout problème !.
{{< /alert >}}

#### Sélectionner un dossier d'export

Par défaut, le plugin de Pandoc va exporter votre `.docx` dans le dossier où se trouve votre note. Si vous souhaitez modifier le chemin d'export, il suffit de le renseigner dans les paramètres du plugin :

![Pandoc](img/pandoc_3.png)

#### Lancer votre export

Depuis la palette de commande `Ctrl + P`, recherchez `Pandoc Word` et cliquez sur la ligne. **Votre document Word se trouvera dans le fichier cible, ou à défaut dans le dossier original de votre note Obsidian.**

{{< alert icon="fire" cardColor="#e63946" iconColor="#1d3557" textColor="#f1faee" >}}
**Attention !** En cas d'export vers un fichier Word, Pandoc ne pourra pas établir de lien avec les autres notes (tout simplement parce qu'il ne sait pas le faire !). Les crochets `[[` `]]` apparaîtront dans votre document convertit. Il faudra penser à effectuer un "chercher-remplacer" dans Word et de remplacer les crochets par un caractère vide.
{{< /alert >}}

