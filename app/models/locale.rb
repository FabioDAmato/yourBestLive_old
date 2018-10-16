class Locale < ApplicationRecord
<<<<<<< HEAD
  
  validates_presence_of :nlocale
  validates_presence_of :indirizzo
  validates_presence_of :backline
  validates_presence_of :pagamento
  validates_presence_of :capacita
  validates_presence_of :genere
  validates_presence_of :telefono
  validates_presence_of :citta


  has_many_attached :images

def self.search(search)
		if search
			where(["nlocale LIKE ?","%#{search}%"])
		else
			all
		end
	end
	
=======
>>>>>>> 015c8ea324514c24ae5084ddfb046d7fc20b71c3
end
