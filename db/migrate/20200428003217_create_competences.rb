class CreateCompetences < ActiveRecord::Migration[6.0]
  def change
    create_table :competences do |t|
      t.references :user, null: false, foreign_key: true
      t.string :art
      t.string :movie
      t.string :music

      t.timestamps
    end
  end
end
