class CreateResevations < ActiveRecord::Migration[6.1]
  def change
    create_table :resevations do |t|
      
      t.integer :date, null: false
      t.integer :time, null: false
      t.integer :people, null: false
      t.integer :payment_method, null: false
     

      t.timestamps
    end
  end
end
