Lyonrb::Application.routes.draw do |map|

  namespace 'admin' do
    resources :events
    root :to => "index#index"
  end

  get "events/list"
  get "projects/list"
  get "companies/list"
  get "people/list"

  devise_for :members

  root :to => "welcome#index"
end
