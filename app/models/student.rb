class Student < ApplicationRecord
  belongs_to :secomp
  has_and_belongs_to_many :events
  validates_presence_of :name, message: 'é um campo obrigatório !'
  validates :registration, uniqueness: true, numericality: { only_integer: true, message: "somente números"},
            length: { is: 7, message: "necessário 7 caracteres" }
  
  validates :email, uniqueness: true, format: { with: /\b[A-Z0-9._%a-z\-]/,
  message: 'é um campo obrigatório !' }

end
