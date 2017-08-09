class HomeController < ApplicationController
  def index
  end
  
  def manager
    @master = params[:master]
    @posts = Post.where(master: @master) # 검색된 관리자의 소유물만 뿌리기
  end
end
