class PortvoliosController < ApplicationController
  def index
    @portfolio_items = Portvolio.all.order(created_at: :desc)
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

  def edit
    @portfolio_item = Portvolio.find(params[:id])
  end

  def update
    @portfolio_item = Portvolio.find(params[:id])
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portvolios_path, notice: 'Your portfolio was updated succesfully'}
      else
        format.html { render :edit }
      end
    end
  end

  private

  def portfolio_params
    params.require(:portvolio).permit(:title, :subtitle, :body)
  end
end
