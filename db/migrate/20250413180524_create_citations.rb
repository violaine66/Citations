class CreateCitations < ActiveRecord::Migration[7.1]
  def change
    create_table :citations do |t|
      t.string :contenu
      t.string :auteur
      t.string :categorie

      t.timestamps
    end
  end
end
