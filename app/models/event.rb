class Event < ApplicationRecord
  belongs_to :secomp
  has_and_belongs_to_many :students
end
