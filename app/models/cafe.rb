class Cafe < ApplicationRecord
    self.table_name = 'cafes'
        attachment :image
       
       validates :name, presence: true
       validates :description, presence: true
       
   
  
end
