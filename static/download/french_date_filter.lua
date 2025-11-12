-- Fichier: french_date_filter.lua
-- Objectif: Reformater la date au format français (jour mois année)

local date_format = "%e %B %Y" -- Format souhaité : 11 novembre 2025
local lang = "fr-FR"

function Meta(meta)
  if meta.date and meta.date.c then
    -- Convertit la chaîne de date YAML en objet Time
    local date_obj = pandoc.utils.date(meta.date.c)

    if date_obj then
      -- Formate l'objet Time selon le format et la langue
      local formatted_date = pandoc.utils.stringify(date_obj:format(date_format, lang))

      -- Remplace la métadonnée 'date' par la chaîne formatée
      meta.date = pandoc.MetaString(formatted_date)
    end
  end
  return meta
end