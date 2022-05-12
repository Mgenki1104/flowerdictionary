Rails.application.routes.draw do



  
  namespace :public do
    resources :bouquets, only: [:index, :show] do
      collection do
        get 'search'
      end
  end
end
  
  namespace :public do
    get 'homes/top'
  end

  namespace :admin do
    resources :bouquets, only: [:new, :create, :index, :show, :edit, :update]
    # get 'bouquets/index'
    # get 'bouquets/new'
    # get 'bouquets/create'
    # get 'bouquets/show'
    # get 'bouquets/edit'
    # get 'bouquets/update'
  end
  namespace :admin do
    resources :flowering_seasons, only: [:create, :index, :edit, :update]
    # get 'flowering_seasons/index'
    # get 'flowering_seasons/create'
    # get 'flowering_seasons/edit'
    # get 'flowering_seasons/update'
  end
  # devise_for :admins, :controllers => {
  # :registrations => 'admin/registrations',
  # :sessions => 'admin/sessions',
  # }

  devise_for(
    :admins,
    path: 'admins',
    module: 'admin'
  )

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'public/homes#top'

 
 
 
 
 
 
  # resources :bouquets do
  # collection do
  #   get 'search'
  # end
# end
end
