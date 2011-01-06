Refinery::Application.routes.draw do
  resources :properties

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :properties do
      collection do
        post :update_positions
      end
    end
  end
end
