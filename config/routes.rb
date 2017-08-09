Rails.application.routes.draw do
  resources :posts
  devise_for :users
  root 'home#index'

  get "manager" => "home#manager" #application_controller 수정 후 [로그인 성공] => manager view로
  
  
  get 'glist' => "home#glist" # 신청자 목록 페이지
  get 'tlist' => "home#tlist" # 대여자 목록 페이지
  
  get 'item_manager' => "posts#index" # 아이템 관리 페이지
  
  get 'give' => "home#give" # 신청 목록
  get 'take' => "home#take" # 대여 목록
  
  get 'item_upload' => "home#itemupload" # 아이템 관리 -> 등록 페이지
  
  
end