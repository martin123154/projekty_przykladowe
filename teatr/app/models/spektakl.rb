class Spektakl < ActiveRecord::Base
    validates :tytul, length: { in: 2..20 }
    validates :rezyser, length: { in: 2..20 }
    validates :premiera, presence: true
     
     
end


