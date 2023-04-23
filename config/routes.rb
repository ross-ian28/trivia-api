Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get "/questions", to: "questions#index"
    end
  end
end
