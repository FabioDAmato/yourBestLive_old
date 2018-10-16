class CittaController < ApplicationController
 	
  def index
  	@citta = City.all
    if @citta.blank?
      flash[:alert] = "Non sono presenti citta nel database"
    end
  end

  	def new
      @c=City.pluck(:nomecity)
      if user_signed_in?
  		  @citta= City.new
      else 
        redirect_to citta_path, alert: "Effettua l'accesso per registrare una città"
  	end
  end 

  	def create
  		@citta = City.new(city_params)
  		if @citta.save
  			flash[:notice] = "città creata"
  			redirect_to action: "index"
  		else flash[:notice] = "città errata"
  			render action: "new"
  		end
  	end

  	def show
  		@citta = City.find_by_id(params[:id])
  		redirect_to controller: 'locali', action: 'index', citta: @citta
  	end

    private
    def city_params
      params.require(:city).permit(:nomecity, :image)
    end

end
