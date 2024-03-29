Bikeroar::Application.routes.draw do
  namespace :api do
    resources :pages do
      member do
        post 'publish'
        get 'total_words', :format => false
      end
      
      collection do
        get 'published'
        get 'unpublished'
      end
    end
  end
end
