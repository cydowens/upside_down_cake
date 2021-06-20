class CakeTopping < ApplicationRecord
  belongs_to :cake
  belongs_to :topping
end
