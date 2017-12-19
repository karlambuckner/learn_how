class EventsController < ApplicationController

  def index
    @events = Event.all
    @order_item = current_order.order_items.new
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
 end

  def create
    @event = Event.new(event_params)
    if @event.save
      flash[:notice] = "Event successfully added!"
      redirect_to  events_path
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event= Event.find(params[:id])
    if @event.update(event_params)
      flash[:notice] = "Event successfully updated!"
      redirect_to events_path
    else
      render :edit
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    flash[:notice] = "Event successfully deleted!"
    redirect_to events_path
  end

private
  def event_params
    params.require(:event).permit(:image, :name, :location, :date, :price, :description)
  end

end
