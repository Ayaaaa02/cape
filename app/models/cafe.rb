class Cafe < ApplicationRecord
    self.table_name = 'cafes'
       has_many :likes, dependent: :destroy
       
        def liked_by?(customer)
           likes.exists?(customer_id: customer.id)
        end
        
        attachment :image
        
        geocoded_by :address 
        after_validation :geocode, if: :address_changed? 
        
       validates :address, presence: true
       validates :name, presence: true
       validates :description, presence: true
       
   
  
end
