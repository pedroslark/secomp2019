class CreateRegistrations < ActiveRecord::Migration[5.2]
  def change
    create_table :registrations do |t|
      t.string :name
      t.date :birth
      t.string :email
      t.string :institution

      t.timestamps
    end
  end
end
