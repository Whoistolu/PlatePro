class Restaurant < ApplicationRecord
    has_many :users, dependent: :destroy
    validates :slug, presence: true, uniqueness: true
end
