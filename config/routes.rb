Rails.application.routes.draw do

  get("/users", { :controller => "users", :action => "index"})
  get("/", { :controller => "users", :action => "index"})
  get("/users/:username", { :controller => "users", :action => "show"})
  get("/users_new", { :controller => "users", :action => "create"})
  get("/updated_users/:modify_name", { :controller => "users", :action => "update"})

  get("/photos", { :controller => "photos", :action => "index"})
  get("/photos/:path_id", { :controller => "photos", :action => "show"})

  get("/delete_photo/:toast_id", { :controller => "photos", :action => "baii"})
  get("/insert_photo", { :controller => "photos", :action => "create"})
  get("/update_photo/:modify_id", { :controller => "photos", :action => "update"})
  get("/new_comment_photo", { :controller => "photos", :action => "new_comment"})
  
end
