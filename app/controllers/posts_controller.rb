class PostsController < ApplicationController
  # вызываем процедуру set_post перед указанными экшенами
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # action выводит все посты на страницу
  def index
    @posts = Post.all
  end

  # выводим пост с его содержимым
  def show
  end

  def new
    @post = Post.new
  end

  def create
    # создаем новый пост и передаем в него параметры
    @post = Post.new(post_params)
    # сохраняем новый пост в базе данных
    if @post.save
      redirect_to @post, success: 'Статья успешно создана'
    else
      render :new, danger: 'Статья не создана'
    end
  end

  def edit
  end

  def update
    if @post.update_attributes(post_params)
      redirect_to @post, success: 'Статья успешно обновлена'
    else
      render :edit, danger: 'Статья не обновлена'
    end
  end

  def destroy
    @post.destroy                   # удаляем пост
    # и перенаправляем пользователя на главную страницу
    redirect_to posts_path, success: 'Статья успешно удалена'
  end

  private

  # создаем отдельный метод для повторяющейся процедуры поиска нашего поста
  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :summary, :body, :image)
  end
end