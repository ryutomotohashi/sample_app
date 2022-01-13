class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    list = List.new(list__params)

    list.save

    redirect_to '/top'

  end

  def index
    @lists = List.all
  end

  def show
  end

  def edit
  end

  private

  def list__params
    params.require(:list).permit(:title,:body)
  end
end
