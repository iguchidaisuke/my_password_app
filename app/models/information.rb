class Information < ApplicationRecord
  belongs_to :user
  validates :info_name,:email,:password, presence: true
end
