class GoToLinksController < ApplicationController
  def home
  end

  def new
    @go_to_link = GoToLink.new
  end

  def create
    @go_to_link = GoToLink.new(go_to_link_params)
    @go_to_link.errors.full_messages

    if @go_to_link.save!
      redirect_to go_to_links_path
    else
      @go_to_link.errors.full_messages
    end
  end
end
