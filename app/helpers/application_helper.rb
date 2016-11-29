module ApplicationHelper
  include SessionsHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "UPFreelancer"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  # Confirms a logged-in user.
      def logged_in_user
        unless logged_in?
          store_location
          flash[:danger] = "Please log in."
          redirect_to login_url
        end
      end


end
