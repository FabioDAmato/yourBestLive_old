class AdminPageController < ApplicationController

def new
	@users=User.all
	@user=User.new
	@local=Locale.new 
	@u = User.pluck(:username)
	@l= Locale.pluck(:nlocale)	
end 

def up
	po=params[:utente]
	utente=User.find_by(username: po)
	if !utente.blank?
		if utente.admin?
			utente.update_attribute(:admin, false)
		else 
			utente.update_attribute(:admin, true)
		end 
		redirect_to '/admin_page', alert: "Modificato il ruolo dell'utente"
	else redirect_to '/admin_page', alert: "L'username inserito non è presente nel database"
	end
end

def loc
	po2=params[:locale]
	locale= Locale.find_by(nlocale: po2)
	if !locale.blank?
		Locale.find_by(nlocale: po2).destroy
		redirect_to '/admin_page', alert: "Locale eliminato"
	else redirect_to '/admin_page', alert: "Il locale inserito non è presente nel database"
	end
end 

def del
	a2=params[:elimina]
	utente= User.find_by(username: a2)
	if !utente.blank?
		User.find_by(username: a2).destroy
		redirect_to '/admin_page', alert: "Utente eliminato"
	else redirect_to '/admin_page', alert: "L'utente inserito non è presente nel database"
	end
end


end 