class VicinoController < ApplicationController
  def index
  	require 'net/http'

  	@locali= Locale.all()
  	@array= Array.new()
  	if user_signed_in?
	  	if current_user.via.present?
		  	if !@locali.empty?
			  	flag=false
			  	min_dist_val=-1
			  	@min_dist=""
			  	@min_time=""
			  	@min_locale=Locale.new()

			  	@locali.each do |loc|
			  		destinazione = loc.indirizzo + loc.citta
			  		origine = current_user.via
			  		
					url = "https://maps.googleapis.com/maps/api/distancematrix/json?units=metric&origins="+ origine + "&destinations="+ destinazione +"&key=AIzaSyDzzFvndZ9uTXk_CwO-xHgozi9EO9DFaqw"
					uri = URI(url)
					response = Net::HTTP.get(uri)
					parsed= JSON.parse(response)

					status= parsed["rows"][0]["elements"][0]["status"]

					if status=="OK"
						distance= parsed["rows"][0]["elements"][0]["distance"]["value"]
						distance_text= parsed["rows"][0]["elements"][0]["distance"]["text"]

						@array << loc.nlocale + ": " + distance_text 

						#se e' la prima iterazione inizializzo le variabili al primo valore
						if !flag
							min_dist_val=distance
							@min_dist= distance_text
							@min_time= parsed["rows"][0]["elements"][0]["duration"]["text"]
							@min_locale= loc

							flag=true
						else
							if min_dist_val > distance
								min_dist_val=distance
								@min_dist= distance_text
								@min_time= parsed["rows"][0]["elements"][0]["duration"]["text"]
								@min_locale= loc
							end
						end
					else flash[:alert] = "Non è stato trovato l'indirizzo corretto del locale " + loc.nlocale
					end
				end

			else
				redirect_to citta_path, alert: "Non risultano presenti locali nel database, prova ad aggiungerne uno"
		  	end
	  	else 
	  		redirect_to citta_path, alert: "Inserisci la tua via nel profilo"
	  	end
	else
		redirect_to citta_path, alert: "Questa funzionalità è solo per gli utenti registrati"
	end
end 

end
