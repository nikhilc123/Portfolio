class PortvoliosController < ApplicationController
  def index
    @portvolio_items = Portvolio.all
  end
end
