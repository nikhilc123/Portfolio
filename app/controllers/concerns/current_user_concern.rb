module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    #import all the current implementation of user by using super
    # null object pattern, in view you do not have to check if user is signed in
    super || guest_user
  end

  def guest_user
    OpenStruct.new(name: "Guest",
                   first_name: "Guest",
                   last_name: "User",
                   email: "guest@example.com")
  end
end