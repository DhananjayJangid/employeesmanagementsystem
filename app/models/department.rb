class Department < ApplicationRecord
    has_many :users
    validates :d_name, presence: true
end
