class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order

  def current_order
    if session[:order_id]
      Order.find(session[:order_id])
    else
      Order.new
    end
  end

  def authorize
    if !current_user
      flash[:alert] = "Please sign in to visit this page."
      redirect_to '/'
    end
  end

  def authorize_admin
    if current_user.admin === true
      new_event_path
    else
      flash[:alert] = "Only an admin can visit this page."
      redirect_to '/'
    end
  end

end
