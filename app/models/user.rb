class User < ApplicationRecord
    has_secure_password
    has_many :games, ->(user) {
        unscope(:where).where(whiteplayer: user).or(where(blackplayer: user))
    }
    validates :username, presence: true, uniqueness: true

end
