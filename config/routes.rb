Rails.application.routes.draw do
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :mutants, except: [:new, :edit]
      resources :enrollments, except: [:new, :edit]
      resources :terms, except: [:new, :edit]
    end
  end
end
