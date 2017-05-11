class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :email
      t.string :hability
      t.string :local
      t.text :obs

      t.timestamps
    end
  end
end
