class Teacher < ActiveRecord::Base
  belongs_to :user
  has_many :assignments
  has_many :checkins
  validates_uniqueness_of :control_number
  validates_numericality_of :control_number
  validates_presence_of :name, :paternal_surname, :user
end