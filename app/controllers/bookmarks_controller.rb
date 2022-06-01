class BookmarksController < ApplicationController

def new
  @list = List.find(params[:list_id])
  @bookmark = Bookmark.new
end

def create
  @bookmark = Bookmark.new(bookmark_params)
  if @bookmark.save
    redirect_to @bookmark, notice: 'bookmark was successfully created.'
  else
    render :new
  end
end

private

def list_params
  params.require(:bookmark).permit(:comment)
end

end
