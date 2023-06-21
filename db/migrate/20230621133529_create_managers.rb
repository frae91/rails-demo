class CreateManagers < ActiveRecord::Migration[6.1]
  def change
    create_table :managers do |t|
      t.string :name
      t.date :birthdate
      t.string :sex
      t.decimal :salary

      t.timestamps
    end
  end
end
