class SignupsController < ApplicationController
  def show
    # lander with link to appropriate app store
  end

  def new
    @user = User.new
  end

  def create
    if User.find_by_phone_number(params[:phone_number])
      redirect_to new_user_path
      flash[:error] = ""
    else
      @user = User.new
      @user.phone_number = params[:phone_number]
    end


    if @user.save
      flash.now[:notice] = "Get started text sent"
    else

    end

    # trigger email with link to '#show'r
  end
end


# Sign Up Protocol
# 
# go to website
# single field sign up: enter phone number
#   send sms to provided number
#     sms contains link to a page on our site
#     page detects device type and redirects to appropriate device app store
#     download app
#     open app 
#       get device phone number
#       prompt user for username, password || facebook connect
#         if facebook connect, associate phone number with account
#       prompt user for username, email, password
#   signup part two: get username, email, password
#     cell # unverified  
#       becomes verified if user opens app
#       associate cell # with username
#     email unverified
#       send verification email w/ unique link to provided email account
#       if clicked, verify email to account
#
#
#     // txt this number to xyz to verify your account
#
#
#     in-app sign in/up process
#         get phone number from device 
#           check against User table for if associated with completed User object
#             if yes
#               auto login
#            ////////// 
#           check against provided number
#         prompt user t
#
# after submit of phone number, show additional sign up interface
#   collect username, email, password
#     redirect to user profile ('non active')
#     send email verification
#       have to click link in email to 'activate' account / prove they own the provided email address
#     notify that phone number is not verified
#
#
# go to mobile website
# provide link to download the app
# ideally have a mobile web interface and also offer link to app
#
#
# download app
#
#
#
#
#
#
# User
# Agenda
# Following
# Tag
#   Reason    // add more content? like short audio recording of why you want to talk
# Note
# Interaction
#
# Report
#
# 

