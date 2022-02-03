class Comment < ApplicationRecord
    belongs_to :newinfo
    belongs_to :user
end
