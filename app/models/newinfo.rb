class Newinfo < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy
    
    validates :updated_at, presence: true
end
