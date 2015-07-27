class CreateElectricians < ActiveRecord::Migration
  def change
    create_table :electricians do |t|
      t.string :name
      t.integer :phone, :limit => 8
      t.string :location
      t.string :website
      t.decimal :score
      t.integer :num_reviews 
      t.string :products
      t.string :services
      t.string :brands
      t.string :styles
      t.string :specialties
      t.string :year
      t.integer :num_of_emp
      t.string :return_pol
      t.string :payment
      t.string :licenses
      t.string :membership
      t.integer :liability, :limit => 1
      t.integer :worker_comp, :limit => 1
      t.integer :bonded, :limit => 1
      t.integer :contract, :limit => 1  
      t.string :warrenty
      t.string :diplomas
      t.string :project_min
      t.string :project_rate
      t.string :company_profile
      t.timestamps null: false
    end
  end
end
