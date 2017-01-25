class TalesController < ApplicationController
  before_action :set_tale, only: [:show, :destroy]

  def new
    @tale = Tale.new
  end

  def create
    @tale = Tale.new(title: table_params[:title])
    @tale.build_root_node(content: table_params[:root_node_content])

    if @tale.save! && @tale.root_node.save!
      redirect_to @tale
    else
      render "new"
    end
  end

  def show

  end

  def index
    @tales = Tale.all
  end


  def destroy
    @tale.destroy
    redirect_to tales_url, notice: "Tale (title) was successfully destroyed."
  end

  private

  def set_tale
    @tale = Tale.find(params[:id])
  end

  def table_params
    params.permit(:title, :root_node_content)
  end

end