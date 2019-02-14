class Student < ApplicationRecord
  belongs_to :secomp
  has_and_belongs_to_many :events

  validates_presence_of :name, message: 'não pode ser deixado em branco'
  validates_presence_of :email, message: 'não pode ser deixado em branco'
end
