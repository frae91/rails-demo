class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.date :birthdate
      t.string :sex
      t.decimal :salary
      t.integer :department_id

      t.timestamps
    end
  end
end
