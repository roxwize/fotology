class PostController < ApplicationController
  def new
    @foto = Foto.new
  end
  def create
    @foto = Foto.new(input_params)
    if @foto.save
      redirect_to root_path, notice: "Foto saved successfully, find at " + root_url(id: @foto.id)
    else
      render :new
    end
  end
  def view
    @foto = Foto.find_by(id: params[:id])
    @comment = Comment.new
  end
  def addcomment
    @foto = Foto.find_by(id: params[:id])
    @comment = @foto.comments.build(comment_params)
    if @comment.save
      redirect_to post_path(id: params[:id]), notice: "Your comment has been added"
    else
      render :view
    end
  end
  def find
    @foto = Foto.all
  end
  def search(search)
    if search
      @foto = Foto.find_by(desc: params[:q])
    else
      @foto = Foto.all
    end
  end

  private
  def input_params
    params.require(:foto).permit(:url, :desc)
  end
  def search_params
    params.require(:foto).permit(:q)
  end
  def comment_params
    params.require(:comment).permit(:content)
  end
end