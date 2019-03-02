class Student < ApplicationRecord
  belongs_to :secomp
  has_and_belongs_to_many :events

  validates_presence_of :name, message: 'é um campo obrigatório !'

  validates :email, uniqueness: { message: 'já cadastrado' }, format: { with: /\b[A-Z0-9._%a-z\-]/,
  message: 'é um campo obrigatório !' }

end
