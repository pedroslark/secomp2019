class Symposium < ApplicationRecord
    validates_presence_of :title, :advisor, :author, :presenter_1, :presenter_2
    
end
