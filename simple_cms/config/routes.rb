Rails.application.routes.draw do

  root 'demo#index'

  get 'demo/index'
  # match "demo/index", :to => "demo#index", :via => :get

  # default routes may go away
  # get ':controller(/:action(/:id))'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
