module ApplicationCable
  class Connection < ActionCable::Connection::Base
    # web socket and action cable works on different https methods
    # so it needs to identify current_user who is creating a comment
    identified_by :current_user

    def guest_user
      guest = GuestUser.new
      guest.id = guest.object_id
      guest.name = "Guest User"
      guest.first_name = "Guest"
      guest.last_name = "User"
      guest.email = "guest@user.com"
      guest
    end

    #passed id to guest_user model since warden expects id
    def connect
      self.current_user = find_verified_user || guest_user
      logger.add_tags 'ActionCable', current_user.email
      logger.add_tags 'ActionCable', current_user.id
    end

    protected

    def find_verified_user
      if verified_user = env['warden'].user
        verified_user
      end
    end
  end
end