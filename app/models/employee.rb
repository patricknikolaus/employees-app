class Employee < ApplicationRecord
  belongs_to :department

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :phone_number, presence: true
  validates :phone_number, uniqueness: true
  validates :job_title, presence: true
  validates :department_id, presence: true
end
