class Resevation < ApplicationRecord
         belongs_to :cafe
         
         validates :cafe_id, :name, presence: true
    
        enum payment_method: { クレジットカード: 0, 店頭でお支払い: 1 }
end
