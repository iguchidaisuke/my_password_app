class InformationController < ApplicationController

  def index
  end

  def new
    @information = Information.new
  end

  def show
    @information = Information.find(params[:id])
  end


  def create
    @information = Information.new(information_params)
    if @information.save
      redirect_to root_path, notice: 'パスワード情報を保存しました'
    else
      render :new, notice: "保存に失敗しました"
    end
end

  def edit
    @information = Information.find(params[:id])
  end

  def update
    @information = Information.find(params[:id])
    if @information.update(information_params)
      redirect_to root_path, notice: '情報を更新しました'
    else
      render :edit
    end
  end

  def destroy
    information = Information.find(params[:id])
    information.destroy
    redirect_to root_path, notice: "記録内容を削除しました"
  end


private
def information_params
  params.require(:information).permit(:info_name,:password,:email,:phone_number,:memo).merge(user_id: current_user.id)
end
end