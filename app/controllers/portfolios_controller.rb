class PortfoliosController < ApplicationController
   
    def index
       @portfolio_items = Portfolio.all 
    end
    
    def new
    end
def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio_path.save
        format.html { redirect_to portfolios_item, notice: 'Your portfolio item is now live.' }
      else
        format.html { render :new }
      end
    end
end

  def edit
    @portfolio_item = Portfolio.find(params[:id])
  end
  
  def show
    @portfolio_item =Portfolio.find(params[:id])
  end
  def destroy
    @portfolio_item = Portfolio.find(params[:id])
    @portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: 'Record was removed.' }
    end
  end
end