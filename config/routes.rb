RPS::Application.routes.draw do

get "/rps", :controller => "game", :action => "winning"

end
