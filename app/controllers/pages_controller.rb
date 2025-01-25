class PagesController < ApplicationController
  def home
  end

  def new
    @goto_link = GoToLink.new
  end

  def create
  end
end
