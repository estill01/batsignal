class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :left_side_data
  
  def left_side_data
    if current_user 
      @me = current_user 
      @my_agendas = @me.agendas.find(:all)
      @my_follows = @me.all_follows
      @new_agenda = @me.agendas.new
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

end
