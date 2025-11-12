---
title: "Afficher les notes créées / modifiées du jour"
---

Avec le module [**Bases**](/bases#bases), il est possible d'afficher dans sa **note quotidienne** les notes créées et modifiées du jour.

Pour ce faire, créez une nouvelle base de données, puis cliquez sur `Filter`, puis sur le bouton `< />`pour afficher les filtres avancés.

- pour afficher les notes créées, collez :
  ```
  file.ctime.date() == date(this.file.name.slice(0, 10))
  ```
- pour afficher les notes modifiées du jour, collez :
  ```
  file.mtime.date() == date(this.file.name.slice(0, 10))
  ```

{{< alert icon="fire" cardColor="#e63946" iconColor="#1d3557" textColor="#f1faee" >}}
Attention ! Cliquez en dehors du champ `Filter`, et non sur le logo avec la petite flèche pour prendre en compte la formule !
{{< /alert >}}

Votre nouvelle base de données est ... vide ! En effet, elle ne s'affichera que lorsque vous l'insérerez dans une note quotidienne.