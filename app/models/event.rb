class Event < ApplicationRecord
  belongs_to :secomp, optional: true
  has_and_belongs_to_many :students
end
