class Reservation < ApplicationRecord
         belongs_to :cafe
         
         validates :cafe_id, presence: true
    
        enum payment_method: { クレジットカード: 0, 店頭でお支払い: 1 }
end
