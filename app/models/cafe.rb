class Cafe < ApplicationRecord
    self.table_name = 'cafes'
        attachment :image
       
       validates :address, presence: true
       validates :name, presence: true
       validates :description, presence: true
       
   
  
end
