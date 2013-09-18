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
	@list = Lists.new
  end

  def create
    @list = Lists.new(params[:lists])
    if @list.save!
      redirect_to @list
    else
      render 'new'
    end
  end

   def update
   	raise params.to_yaml
    if @list.update_attributes(params[:lists])
      flash[:success] = "lists updated"
      redirect_to @list
    else
      render 'edit'
    end
  end

  def destroy
  	Lists.find(params[:id]).destroy
  	flash[:success] = "List is Checked off."
  	redirect_to lists_url
  end
end
