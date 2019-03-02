class CreateSymposia < ActiveRecord::Migration[5.2]
  def change
    create_table :symposia do |t|
      t.string :title
      t.string :advisor
      t.string :presenter_1
      t.string :presenter_2
      t.string :author

      t.timestamps
    end
  end
end
