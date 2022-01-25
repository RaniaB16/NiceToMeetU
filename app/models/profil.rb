class Profil < ApplicationRecord
  belongs_to :user

  validates :user, presence: true
  validates :full_name, presence: true
  validates :actual_job, presence: true
  validates :company, presence: true
  validates :description, presence: true
end
