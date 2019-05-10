class Student < ApplicationRecord

  def presence
    (self.events.count/Event.count.to_f).round(2)*100
  end

  def self.to_csv
    attributes = %w{name email presence}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |student|
        csv << attributes.map{ |attr| student.send(attr) }
      end
    end
  end

  belongs_to :secomp
  has_and_belongs_to_many :events

  validates_presence_of :name, message: 'é um campo obrigatório !'

  validates :email, uniqueness: { message: 'já cadastrado' }, format: { with: /\b[A-Z0-9._%a-z\-]/,
  message: 'é um campo obrigatório !' }

end
