class ListsController < ApplicationController
  before_action :select_list, only: [:edit, :show, :destroy, :edit]
  LISTS = List.all
  
  def index
    @lists = List.all
  end

  def new
    @list = List.new()
  end

  def create
    @list = List.create(list_params)
    redirect_to(lists_path(@list))
  end
  
  def edit
  end

  def show
  end

  def destroy
  end

  private

  def select_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name)
  end

end
