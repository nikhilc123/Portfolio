class PortvoliosController < ApplicationController
  def index
    @portfolio_items = Portvolio.all
  end

  def new
    @portfolio_item = Portvolio.new
  end

  def create
    @portfolio_item = Portvolio.new(portfolio_params)
    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portvolios_path, notice: 'Your portfolio is new live!' }
      else
        format.html { render :new }
      end
    end
  end

  private

  def portfolio_params
    params.require(:portvolio).permit(:title, :subtitle, :body)
  end
end
