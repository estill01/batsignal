# Dependencies
Imagemagick => for RMagick => for CarrierWave
	ImageMagick can itself be a bit tricky to install.

	get RMagick2

	A full ImageMagick installation walk-through is available here:
	http://rmagick.rubyforge.org/install-faq.html



# System Structure
 User
 Agenda
 Following
 Tag
   Reason    // add more content? like short audio recording of why you want to talk
 Note
 Interaction

 Report

---
# Sign Up Protocol

go to website
single field sign up: enter phone number
  send sms to provided number
    sms contains link to page with link to appropriate app store to get app
      
      in-app sign in/up process
        get phone number from device 
          check against User table for if associated with completed User object
            if yes
              auto login
           ////////// 
          check against provided number
        prompt user t

after submit of phone number, show additional sign up interface
  collect username, email, password
    redirect to user profile ('non active')
    send email verification
      have to click link in email to 'activate' account / prove they own the provided email address
    notify that phone number is not verified


go to mobile website
provide link to download the app
ideally have a mobile web interface and also offer link to app


download app


Run "rake doc:app" to generate API documentation for your models, controllers, helpers, and libraries.
