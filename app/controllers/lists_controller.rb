class ListsController < ApplicationController

	def index

	@list = Lists.all
	end


	def show
		@list = Lists.find(params[:id])
	end
	
	def edit
	@list= Lists.find(param[:id])
	end
	
	
  def new
	@list=Lists.new
  end

  def destroy
  	Lists.find(params[:id]).destroy
  	flash[:Ssuccess] = "List is Checked off."
  	redirect_to lists_url
  end
end
