Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  get "manager" => "home#manager" #application_controller 수정 후 [로그인 성공] => manager view로
  
end