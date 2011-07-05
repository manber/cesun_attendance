class Teacher < ActiveRecord::Base
  belongs_to :user
  validates_uniqueness_of :control_number
  validates_numericality_of :control_number
  validates_presence_of :name, :paternal_surname, :user
end