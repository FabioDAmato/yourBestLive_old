class AdminPageController < ApplicationController


def new
	@users=User.all
	@user=User.new
	@local=Locale.new 
	@u = User.pluck(:username)
	@l= Locale.pluck(:nlocale)
	
end 

def up
	po=params[:bo]


	if User.find_by(username: po).admin?
		User.find_by(username: po).update_attribute(:admin, false)

	else 
		User.find_by(username: po).update_attribute(:admin, true)
	end 
	redirect_to '/admin_page'
end

def loc
	
	po2=params[:bo_l]
	Locale.find_by(nlocale: po2).destroy
	 

	redirect_to '/admin_page'
end 


end 