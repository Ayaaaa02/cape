Rails.application.routes.draw do
  #root 'cafes#top'
  get  "/" => redirect("/public")

 # 顧客用
# URL /customers/sign_in ...
devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}
  namespace :public do
   root 'cafes#top'
   get "/about" => "cafes#about"
   get "/customers/mypage" => "customers#show"
   get "/customers/information/edit" => "customers#edit"
   patch "/customers" => "customers#update"
   get "/resevations/new" => "resevations#new"
   get "/resevations/confirm" => "resevations#confirm"
   get "/resevations/thanks" => "resevations#thanks"
   post "/resevations" => "resevations#create"
   resources :cafes, only: [:index, :show]
   end



# 店舗用
# URL /admin/sign_in ...
devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}

namespace :admin do
    resources :cafes, only: [:index, :new, :create, :show, :edit, :update]
    resources :resevations, only: [:index]
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
