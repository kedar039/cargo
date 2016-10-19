class CreateBiltis < ActiveRecord::Migration
  def change
    create_table :biltis do |t|
      t.string :consigner
      t.string :consignee
      t.string :goods
      t.string :invoice_number
      t.float :asset_value
      t.string :tin_no
      t.float :charged_kgs
      t.string :service_tax_paid_by
      t.float :transit_charge
      t.float :st_charge
      t.float :others
      t.float :cc
      t.float :fov
      t.float :aoc
      t.float :total
      t.references :client, index: true, foreign_key: true
      t.references :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
