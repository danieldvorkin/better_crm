class Address < ApplicationRecord
    belongs_to :customer
    belongs_to :quote, optional: true

    def full_address
        address1 + " " + (address2 if address2) + " " + city + " " + postal + " " + country
    end
end
