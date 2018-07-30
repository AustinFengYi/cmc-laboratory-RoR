Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "announcements#index"
  resources :laboratories,only: [:index] do
    collection do
      get :introduction
    end

    collection do
      get :research
    end

    collection do
      get :teamleader
    end

    collection do
      get :teammember
    end

    collection do
      get :album
    end

    collection do
      get :contact
    end

    collection do
      get :companyproject
    end
  end

  resources :announcements,only: [:index,:show],path:'laboratories/announcements' do
    collection do
      get :announcehomepage,path:'homepage'
    end
  end

  resources :categories,only: [:show],path:'laboratories/announcements/categories'


  namespace :admin do
    root "announcements#index"
    resources :announcements 
    resources :categories
  end

end
