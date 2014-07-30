class SinsController < ApplicationController

  # TODO - Need to move name/PW to a config file
  http_basic_authenticate_with :name => "layla", :password => "spaghetti"

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
    @sin = Sin.find(params[:id])
    @sin.destroy
    redirect_to root_path
  end

private
    def sin_params
      params.require(:sin).permit(:description, :footprint)
    end

end
