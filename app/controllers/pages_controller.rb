class PagesController < ApplicationController
  def index
    @foto = Foto.last
  end
  def flashinfo
    redirect_to root_path, notice: params[:msg]
  end
end
