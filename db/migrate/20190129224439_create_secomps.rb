class CreateSecomps < ActiveRecord::Migration[5.2]
  def change
    create_table :secomps do |t|
      t.string :name

      t.timestamps
    end
  end
end
