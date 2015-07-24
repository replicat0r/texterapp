class CreateElectricians < ActiveRecord::Migration
  def change
    create_table :electricians do |t|
      t.string :name
      t.string :phone
      t.string :location
      t.string :website
      t.string :score 
      t.string :products
      t.string :services
      t.string :brands
      t.string :styles
      t.string :specialties
      t.string :year
      t.string :num_of_emp
      t.string :return_pol
      t.string :payment
      t.string :licenses
      t.string :membership
      t.boolean :liability
      t.boolean :worker_comp
      t.boolean :bonded
      t.boolean :contract
      t.string :warrenty
      t.string :diplomas
      t.string :project_min
      t.string :project_rate
      t.string :company_profile

      t.timestamps null: false
    end
  end
end
