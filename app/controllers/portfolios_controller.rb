class PortfoliosController < ApplicationController
   
    def index
       @portfolio_items = Portfolio.all 
    end
    
    def new
    end
    def create
    @Portfolio_item = Portfolio.new(Portfolios_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to @portfolios_path, notice: 'Portfolio item was successfully created.' }
      else
        format.html { render :new }
      end
    end
    end
end
