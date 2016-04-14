class CreateSpektakls < ActiveRecord::Migration
  def change
    create_table :spektakls do |t|
      t.string :tytul
      t.string :rezyser
      t.datetime :premiera

      t.timestamps null: false
    end
  end
end
