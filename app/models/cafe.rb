class Cafe < ApplicationRecord
    
        attachment :cafe_image
       
       validates :name, presence: true
       
   
  
end
