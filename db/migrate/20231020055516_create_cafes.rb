class CreateCafes < ActiveRecord::Migration[6.1]
  def change
     create_table :cafes do |t|
         
       t.string :address, null: false 
       t.string :name,  null: false
       t.text :description, null: false
       t.string :image_id, null: false
       t.boolean :status, default: true
        t.timestamps
      end
  end
end
