class Person < ActiveRecord::Base
  has_many :messages, dependent: :destroy
  validates :name, presence: true
  validates :email, presence: true
  validates_format_of :email, :with => /@/
  validates :birthdate, presence: true
end
