Rails.application.routes.draw do
  

 # 顧客用
# URL /customers/sign_in ...
devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}
  namespace :public do
   root 'homes#top'
   get "/about" => "homes#about"
   get "/customers/mypage" => "customers#show"
   get "/customers/information/edit" => "customers#edit"
   patch "/customers" => "customers#update"
   get "/resevations/new" => "resevations#new"
   get "/resevations/confirm" => "resevations#confirm"
   get "/resevations/thanks" => "resevations#thanks"
   post "/resevations" => "resevations#create"
   get "/cafes" => "cafes#index"
   get "cafes/:id" => "cafes#show"
  end



# 店舗用
# URL /admin/sign_in ...
devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}

namespace :admin do
    get "/cafes" => "cafes#index"
    get "/cafes/new" => "cafes#new"
    get "/cafes/:id" => "cafes#show"
    get "/cafes/:id/edit" => "cafes#edit"
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
