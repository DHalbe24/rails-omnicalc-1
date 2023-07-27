Rails.application.routes.draw do
  get("/square", { :controller => "calc", :action => "square" })

  #get("/square_root", { :controller => "calc", :action => "square_root" })

  #get("/payment", { :controller => "calc", :action => "payment" })
end
