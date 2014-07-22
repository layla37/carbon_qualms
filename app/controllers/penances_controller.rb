class PenancesController < ApplicationController

	def index
	end

	def new
		@penance = Penance.new
	end

	def create
		@penance = Penance.new(penance_params)
		@penance.save
		@penances = Penance.all	
	end

	def show

	end

	def destroy
	end

	def update
	end

	private
	  def penance_params
	    params.require(:penance).permit(:description, :footprint)
	  end

end
