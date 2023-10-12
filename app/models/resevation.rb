class Resevation < ApplicationRecord
    
        enum payment_method: { クレジットカード: 0, 店頭でお支払: 1 }
end
