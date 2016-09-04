class Customer < ApplicationRecord
  has_many :duties
  has_many :employees, through: :duties
end
