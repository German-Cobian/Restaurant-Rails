class OrderItemsController < ApplicationController
  before_action :set_order, only: %i[ create update destroy ]

  def create
    @order_item = @order.order_items.new(order_params)
    @order.save
    session[:order_id] = @order.id

    respond_to do |format|
      format.turbo_stream { redirect_to cart_path, status: :see_other }
    end
  end

  def update
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(order_params)
    @order_items = current_order.order_items
  end

  def destroy
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    @order_items = current_order.order_items
  end

  private

  def set_order
    @order = current_order
  end

  def order_params
    params.require(:order_item).permit(:product_id, :quantity, :image)
  end
end
