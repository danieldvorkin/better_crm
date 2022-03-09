class Customer < ApplicationRecord
    has_many :addresses
    has_many :quotes
    belongs_to :account
    validates_presence_of :account_id, :name, :email
end
