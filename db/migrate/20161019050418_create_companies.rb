class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :city
      t.integer :zip
      t.string :state
      t.string :country
      t.string :email
      t.string :phone

      t.timestamps null: false
    end
  end
end
