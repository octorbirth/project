class HomeController < ApplicationController
  def index
  end
  
  def manager
    @master = params[:master]
    @posts = Post.where(master: @master) # 검색된 관리자의 소유물만 뿌리기
  end
  
  def buy
    @item_id = params[:item_id]
    line = Post.find(@item_id)
    trade = Trade.new
    trade.name = line.name
    trade.day = line.day
    trade.uid = params[:uid]
    trade.master = line.master
    trade.state = "신청"
    trade.save
  
    redirect_to action: "manager", master:params[:master]
  end
  
  
  
  def glist
    @uid = params[:uid]
    @posts = Trade.where(state: "신청", master: @uid).order('created_at DESC')
  end
  
  def tlist
    @uid = params[:uid]
    @posts = Trade.where(state: "대여", master: @uid).order('created_at DESC')
  end
  
  def give
    @uid = params[:uid]
    @posts = Trade.where(state: "신청", uid: @uid).order('created_at DESC')
  end
  
  
  def take
    @uid = params[:uid]
    @posts = Trade.where(state: "대여", uid: @uid).order('created_at DESC')
  end
  
  def land
    @item_id = params[:item_id]
    line = Trade.find(@item_id)
    line.state ="대여"
    line.save
    redirect_to action: "glist", uid:params[:master]
  
  end
  
  def complete
     @item_id = params[:item_id]
     line = Trade.find(@item_id)
     line.destroy
     redirect_to action: "tlist", uid:params[:master]
  
  end
end