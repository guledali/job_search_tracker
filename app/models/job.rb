class Job < ApplicationRecord
  include SwedishCounties

  SOURCES ||= %w[
      LinkedIn
      Indeed
      "Blocket Jobb"
      Arbetsförmedlingen
      Other
    ].freeze

  enum :role, {
    backend_developer: 0,
    frontend_developer: 1,
    fullstack_developer: 2
  }

  validates :title, presence: true
  validates :company, presence: true
  validates :location, presence: true, inclusion: { in: COUNTIES.keys.map(&:to_s) }
  validates :source, presence: true, inclusion: { in: SOURCES }
  validates :status, presence: true
  validates :role, presence: true, inclusion: { in: roles.keys }
  validates :status, presence: true, inclusion: { in: %w[waiting applied interviewing rejected] }

  def self.humanized_roles
    self.roles.keys.map(&:humanize)
  end

  def humanized_role
    role&.humanize
  end
end
