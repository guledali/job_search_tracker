class Job < ApplicationRecord
  # These validations will make the model tests fail initially
  validates :title, presence: true
  validates :company, presence: true
  validates :location, presence: true
  validates :source, presence: true, inclusion: { in: %w[LinkedIn Indeed "Blocket Jobb" Arbetsförmedlingen Other] }
  validates :status, presence: true, inclusion: { in: %w[waiting applied interviewing rejected] }

  def salary_range
    return nil unless salary_min && salary_max
    "#{salary_min} - #{salary_max} kr"
  end
end
