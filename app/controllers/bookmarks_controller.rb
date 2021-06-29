class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end

  def new
    @movies = Movie.all
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new()
  end

  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    if @bookmark.save
      redirect_to(bookmark_path(@bookmark))
    else
      render(:new)
    end
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :list_id)
  end
end
