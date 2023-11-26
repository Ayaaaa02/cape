class Cafe < ApplicationRecord
    self.table_name = 'cafes'
        attachment :image
        
        geocoded_by :address 
        after_validation :geocode, if: :address_changed? 
        
       validates :address, presence: true
       validates :name, presence: true
       validates :description, presence: true
       
   
  
end
