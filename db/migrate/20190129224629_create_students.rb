class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :institution
      t.string :course
      t.string :registration
      t.string :phone
      t.references :secomp, foreign_key: true

      t.timestamps
    end
  end
end
