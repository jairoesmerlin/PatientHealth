class CreateStates < ActiveRecord::Migration[6.1]
  def change
    create_table :states do |t|
      t.string :name
      t.boolean :offer_services
      t.integer :minimum_age

      t.timestamps
    end
  end
end
