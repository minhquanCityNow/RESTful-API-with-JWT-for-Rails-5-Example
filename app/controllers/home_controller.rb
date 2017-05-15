class HomeController < ApplicationController
  before_action :prepare_comments
  before_action :authenticate_user!

  def index
  end

  private
    def prepare_comments
      @comments = Comment.last(5)
    end
end