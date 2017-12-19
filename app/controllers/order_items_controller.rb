class OrderItemsController < ApplicationController

  def create
    @order = current_order
    @order_item = @order.order_items.new
    @order.save
    session[:order_id] = @order.id
  end

def show
  @order = current_order
  @item = @order.order_items.find(params[:id])
end

def edit
  @order = current_order
  @item = @order.order_items.find(params[:id])
end

def update
  @order = current_order
  @item = @order.order_items.find(params[:id])
  if @item.update(item_params)
    flash[:notice] = "Cart updated!"
    respond_to do |format|
      format.html { redirect_to cart_path }
      format.js { render "events/show" }
    end
  else
    render :edit
  end
end

  def destroy
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @item.destroy
    @order.save
    flash[:notice] = "Item deleted!"
    respond_to do |format|
      format.html { redirect_to cart_path }
      format.js
    end
  end

  private

  def item_params
    params.require(:order_item).permit(:quantity, :event_id)
  end
end
