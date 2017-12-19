class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order

  def current_order
    if session[:order_id]
      Order.find(session[:order_id])
    else
      if current_user
        if Order.where(:account_id => current_user.id, :status => 'new').any?
          x = Order.where(:account_id => current_user.id, :status => 'new')
          Order.find(x.first.id)
        else
          Order.new(:account_id => current_user.account.id, :status => 'new')
        end
      else
        Order.new
      end
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
