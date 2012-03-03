class ApplicationController < ActionController::Base
  protect_from_forgery
#   before_filter :me
# 
#   def me
#     @user = current_user
#     @agendas = @user.agendas
#   end

  def get_vars
    @user = User.find(params[:id])
    @agendas = @user.agendas.order("position")
    @follows = @user.all_follows
    if @user == current_user
      @agenda = current_user.agendas.new
    end
  end
#     elsif  @user == current_user
#       @agendas = @user.agendas.order("position")
#       @follows = @user.all_follows
#       @agenda = current_user.agendas.new
# 
#       @user = User.find(params[:id]) 
#       @agendas = @user.agendas.order("position")
#       @follows = @user.all_follows
#       if @user == current_user
#         @agenda = current_user.agendas.new
#       end



  def mobile_device?
    if session[:mobile_param]
      session[:mobile_param] == "1"
    else
      request.user_agent =~ /Mobile/
    end
  end
  helper_method :mobile_device?

  def prepare_for_mobile
    session[:mobile_param] = params[:mobile] if params[:mobile]
  end
end
