class Duty < ApplicationRecord
  belongs_to :employee
  belongs_to :customer
end
