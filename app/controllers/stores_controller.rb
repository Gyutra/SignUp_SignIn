class StoresController < ApplicationController
	before_action :require_user, only: [:index, :show]
	def home
		@stores = Store.all
	end
	
	def show 
    	@Store = Store.find(params[:id]) 
    	@categories = @store.categories
  	end
		
  end

