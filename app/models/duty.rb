class Duty < ApplicationRecord
  belongs_to :employee
  belongs_to :customer

  def employees_previous
    @previous ||= employee.duties.where("date < ?", date).order("date DESC").first
  end

  def employees_next
    @next ||= customer.duties.where("date > ?", date).order("date ASC").first
  end
end
