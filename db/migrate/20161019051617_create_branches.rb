class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :branch_code
      t.string :branch_name
      t.string :address
      t.string :city
      t.integer :zip
      t.string :state
      t.string :country
      t.string :email
      t.string :phone
      t.references :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
