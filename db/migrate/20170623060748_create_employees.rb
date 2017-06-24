class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :ssn
      t.string :address
      t.date :dob
      t.string :gender
      t.string :phone
      t.references :organization, foreign_key: true

      t.timestamps
    end
  end
end
