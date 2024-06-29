class Attendance < ApplicationRecord
  belongs_to :student
  validates :status, inclusion: { in: %w[present absent tardy] }
end
