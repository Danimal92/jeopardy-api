class User < ApplicationRecord
    has_many :rounds, dependent: :destroy
end
