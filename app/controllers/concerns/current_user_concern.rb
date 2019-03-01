module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    #import all the current implementation of user by using super
    # null object pattern, in view you do not have to check if user is signed in
    super || guest_user
  end

  def guest_user
    guest = GuestUser.new
    guest.name = "Guest"
    guest.first_name = "Guest"
    guest.last_name = "User"
    guest.email = "guest@example.com"
    guest
  end
end