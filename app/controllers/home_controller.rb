class HomeController < ApplicationController

	def index
		@locale = Locale.all
	end
	
	def new
		@locale = Locale.new
	end
	
	def edit
	end

	def create
		@locale = Locale.new(locale_params)
		if @locale.save
			flash[:notice] = "locale creato"
			redirect_to action: "index"
		else flash[:notice] = "locale errato"
			render action: "new"
		end
	end

	private
	def locale_params
		params.require(:locale).permit(:nlocale, :indirizzo, :backline, :pagamento, :capacita, :genere, :telefono)
	end
end
