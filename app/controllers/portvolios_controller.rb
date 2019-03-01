class PortvoliosController < ApplicationController
  before_action :set_portfolio, only: [:show, :edit, :update, :destroy]

  def index
    @portfolio_items = Portvolio.all.order(created_at: :desc)
  end

  def angular
    @ror_portfolio_items = Portvolio.ror_angular_items
  end

  def new
    @portfolio_item = Portvolio.new
    3.times { @portfolio_item.technologies.build }
  end

  def show
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
  end

  def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portvolios_path, notice: "Your portfolio was updated succesfully" }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to portvolios_url, notice: "Portfolio was deleted succesfully" }
    end
  end

  private

  def portfolio_params
    params.require(:portvolio).permit(:title,
                                      :subtitle,
                                      :body,
                                      technologies_attributes: [:name])
  end

  def set_portfolio
    @portfolio_item = Portvolio.find(params[:id])
  end
end
