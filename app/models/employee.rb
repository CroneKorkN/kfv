class Employee < ApplicationRecord
  has_secure_password
  has_many :duties
  has_many :customers, through: :duties

  def current_duty
    duties.where("date < ?", DateTime.now).order("date DESC").first || 
  end
end
