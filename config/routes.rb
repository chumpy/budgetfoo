Budgetfoo::Application.routes.draw do
  resources :budgets

  root :to => "home#index"
  devise_for :users
end
