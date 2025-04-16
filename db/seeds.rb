# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Citation.destroy_all

citations = [
  {
    contenu: "Ce n’est pas parce que les choses sont difficiles que nous n’osons pas, c’est parce que nous n’osons pas qu’elles sont difficiles.",
    auteur: "Sénèque",
    categorie: "philosophie"
  },
  {
    contenu: "La tristesse vole parfois en escadrille, mais le courage, lui, se glisse en silence dans les interstices.",
    auteur: "Anonyme",
    categorie: "réconfort"
  },
  {
    contenu: "Il y a dans chaque au revoir la promesse d’un jour nouveau.",
    auteur: "Yasmina Khadra",
    categorie: "espoir"
  },
  {
    contenu: "Et puis un jour, tu réalises que tu es en train de guérir, même si tu ne sais pas encore comment.",
    auteur: "Anonyme",
    categorie: "guérison"
  },
  {
    contenu: "Il faut porter en soi un chaos pour mettre au monde une étoile dansante.",
    auteur: "Friedrich Nietzsche",
    categorie: "inspiration"
  },
  {
    contenu: "Ceux qui nous quittent ne sont jamais bien loin. Ils marchent à nos côtés, invisibles, silencieux, mais toujours présents.",
    auteur: "Anonyme",
    categorie: "deuil"
  },
  {
    contenu: "Rien ne dure, sauf le changement.",
    auteur: "Héraclite",
    categorie: "philosophie"
  },
  {
    contenu: "Chaque matin, nous renaissons. Ce que nous faisons aujourd’hui est ce qui importe le plus.",
    auteur: "Bouddha",
    categorie: "présence"
  },
  {
    contenu: "Respire. Tu es en vie. Et c’est déjà une victoire.",
    auteur: "Anonyme",
    categorie: "réconfort"
  },
  {
    contenu: "Le chagrin est un honneur que l’on rend à ce qui a compté.",
    auteur: "Delphine Horvilleur",
    categorie: "deuil"
  },

  # Nouvelles citations
  {
    contenu: "La lumière ne brille jamais autant que dans l’obscurité.",
    auteur: "Victor Hugo",
    categorie: "espoir"
  },
  {
    contenu: "Le bonheur n’est réel que lorsqu’il est partagé.",
    auteur: "Christopher McCandless",
    categorie: "vie"
  },
  {
    contenu: "C’est dans le silence que l’on entend le mieux son propre cœur.",
    auteur: "Anonyme",
    categorie: "introspection"
  },
  {
    contenu: "Tu n’es jamais trop vieux pour te fixer un nouvel objectif ou rêver un nouveau rêve.",
    auteur: "C.S. Lewis",
    categorie: "motivation"
  },
  {
    contenu: "Il y a des fleurs partout pour qui veut bien les voir.",
    auteur: "Henri Matisse",
    categorie: "inspiration"
  },
  {
    contenu: "Le temps guérit ce que la raison ne peut apaiser.",
    auteur: "Sénèque",
    categorie: "guérison"
  },
  {
    contenu: "Aime comme si tu n’avais jamais été blessé.",
    auteur: "Alfred de Musset",
    categorie: "amour"
  },
  {
    contenu: "Le courage, c’est de comprendre sa propre vie.",
    auteur: "Jean-Paul Sartre",
    categorie: "philosophie"
  },
  {
    contenu: "La paix commence avec un sourire.",
    auteur: "Mère Teresa",
    categorie: "présence"
  },
  {
    contenu: "L’obscurité ne peut pas chasser l’obscurité, seule la lumière le peut.",
    auteur: "Martin Luther King Jr.",
    categorie: "espoir"
  }
]

citations.each do |citation|
  Citation.create!(citation)
end

puts "🌱 20 citations semées avec amour."
