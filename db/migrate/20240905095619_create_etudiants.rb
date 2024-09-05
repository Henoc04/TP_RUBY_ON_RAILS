class CreateEtudiants < ActiveRecord::Migration[7.1]
  def change
    create_table :etudiants do |t|
      t.string :nom
      t.string :prenom
      t.string :email
      t.date :date_naissance

      t.timestamps
    end
  end
end
