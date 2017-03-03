class PostsController < ApplicationController
  # вызываем процедуру set_post перед указанными экшенами
  before_action :set_post, only: :show

  # action выводит все посты на страницу
  def index
    @posts = Post.paginate(page: params[:page], per_page: 5)
  end

  # выводим пост с его содержимым
  def show
  end

  private

  # создаем отдельный метод для повторяющейся процедуры поиска нашего поста
  def set_post
    @post = Post.find(params[:id])
  end
end