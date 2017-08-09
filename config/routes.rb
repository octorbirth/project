Rails.application.routes.draw do
  resources :posts
  devise_for :users
  root 'home#index'

  get "manager" => "home#manager" #application_controller 수정 후 [로그인 성공] => manager view로
  
  get 'search' => "home#manager" # 검색을 통한 페이지 reRoad
  get 'glist' => "home#glist" # 신청자 목록 페이지
  get 'tlist' => "home#tlist" # 대여자 목록 페이지
  
  get 'item_manager' => "posts#index" # 아이템 관리 페이지
  
  get 'give' => "home#give" # 신청 목록
  get 'take' => "home#take" # 대여 목록
  
    
  get ":controller(/:action(/:id))"
  post ":controller(/:action(/:id))"
  
  get "/to_main" => "home#manager" #
  get "/glist" => "home#glist"
  get "/tlist" => "home#tlist"
  get "buy" => "home#buy" # 신청 버튼 클릭 후 다시 자기 화면으로
  get "land" => "home#land" # 대여해주기 버튼을 눌린 후 자기 화면으로
  get "complete" => "home#complete" # 반납확인 버튼을 눌린 후 자기 화면으로
  
end