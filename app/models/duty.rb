class Duty < ApplicationRecord
  belongs_to :employee
  belongs_to :customer
  default_scope ->{order("date ASC")}

  def employees_previous
    @previous ||= employee.duties.where("date < ?", date).last
  end

  def employees_next
    @next ||= employee.duties.where("date > ?", date).first
  end
end
