class Contact < ApplicationRecord
    belongs_to :group
    
    paginates_per 10
    def gravatar
        hash = Digest::MD5.hexdigest(email.downcase)
        # compile URL which can be used in <img src="RIGHT_HERE"...
        "https://www.gravatar.com/avatar/#{hash}"
    end
end
