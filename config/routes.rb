Rails.application.routes.draw do



  # Routes for the Ovulation calculator resource:

  # CREATE
  post("/insert_ovulation_calculator", { :controller => "ovulation_calculators", :action => "create" })
          
  # READ
  get("/dashboard", { :controller => "ovulation_calculators", :action => "index" })
  
  get("/ovulation_calculators/:path_id", { :controller => "ovulation_calculators", :action => "show" })
  
  # UPDATE
  
  post("/modify_ovulation_calculator/:path_id", { :controller => "ovulation_calculators", :action => "update" })
  
  # DELETE
  get("/delete_ovulation_calculator/:path_id", { :controller => "ovulation_calculators", :action => "destroy" })

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

  # HOMEPAGE
  #get("/", { :controller => "application", :action => "homepage" })
end
