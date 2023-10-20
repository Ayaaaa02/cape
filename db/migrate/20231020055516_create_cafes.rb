class CreateCafes < ActiveRecord::Migration[6.1]
  def change
     create_table :cafes do |t|
       t.string :cafename,  null: false
       t.string :image_id, null: false
        t.timestamps
      end
  end
end
