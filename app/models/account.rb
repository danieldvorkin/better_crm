class Account < ApplicationRecord
    belongs_to :user
    has_many :customers
    has_many :inventory_items

    validates_presence_of :user_id, :name
end
