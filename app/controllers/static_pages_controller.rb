class StaticPagesController < ApplicationController
  def home

  end

  def service
    if logged_in?
    @micropost  = current_user.microposts.build
    @feed_items = current_user.feed.paginate(page: params[:page], :per_page => 5)
    @microposts = Micropost.all
    end

  end

  def wanted
    if logged_in?
    @wanted  = current_user.wanteds.build
    @wfeed_items = current_user.wfeed.paginate(page: params[:page], :per_page => 5)

    end
  end



  def help
  end

  def about
  end

end
