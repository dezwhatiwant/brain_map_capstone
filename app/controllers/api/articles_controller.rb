class Api::ArticlesController < ApplicationController
  def index
    @articles = Article.all

    render 'index.json.jbuilder'
  end
end
