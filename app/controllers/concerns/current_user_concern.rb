module CurrentUserConcern
  extend ActiveSupport::Concern
    #overriding devise's current_user method
    #allowing for guest users to visit the site
    def current_user
      super || guest_user
    end

    def guest_user
      guest = GuestUser.new 
      guest.name = "Guest User"
      guest.first_name = "Guest"
      guest.last_name = "User"
      guest.email = "guest@example.com"
      guest
    end
end