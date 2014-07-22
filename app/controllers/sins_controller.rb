class SinsController < ApplicationController

	def index
		@sins = Sin.all
	end

	def create
		@sin = Sin.new(sin_params)
    @sin.save
    @sins = Sin.all 
	end

	def show
    @sin = Sin.find(params[:id])  
  end

  	def new
      @sin = Sin.new
  	end

    def edit
    	@sin = Sin.find(params[:id])   	
  	end

  	def update
  		@sin = Sin.find(params[:id])    
 
      if @sin.update(sin_params)
        redirect_to @sin
      else
        render 'edit'
      end
  	end

  	def destroy
  		#get the id from params
  		id = params["id"]

  		#find the sin object with the id
  		@sin = Sin.find(id)
  		@sin.destroy
  		redirect_to :controller => 'home', :action => 'index'

  	end

private
    def sin_params
      params.require(:sin).permit(:description, :footprint)
    end

end
