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
  }
]

citations.each do |citation|
  Citation.create!(citation)
end

puts "🌱 10 citations semées avec amour."

