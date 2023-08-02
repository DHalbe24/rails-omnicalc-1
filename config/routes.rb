Rails.application.routes.draw do
  get("/square/new", { :controller => "calc", :action => "square" })

  get("/square/results", { :controller => "calc", :action => "square_results" })

  get("/square_root/new", { :controller => "calc", :action => "square_root" })

  get("/square_root/results", { :controller => "calc", :action => "square_root_results" })

  #get("/payment", { :controller => "calc", :action => "payment" })
end
