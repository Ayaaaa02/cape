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
   get "resevations/confirm" => "resevations#confirm"
   get "resevations/thanks" => "resevations#thanks"
   post "resevations/create" => "resevations"
  end



# 店舗用
# URL /admin/sign_in ...
devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
