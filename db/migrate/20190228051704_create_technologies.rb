class CreateTechnologies < ActiveRecord::Migration[5.1]
  def change
    create_table :technologies do |t|
      t.text :name
      t.references :portvolio, foreign_key: true

      t.timestamps
    end
  end
end
