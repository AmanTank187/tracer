class Location < ApplicationRecord
    reverse_geocoded_by :latitude, :longitude do |obj,results|
        if geo = results.first 
            full_address = geo.address.split(",")
            street_address = full_address[0]
            obj.address = street_address
            obj.city    = geo.city
            obj.postcode = geo.postal_code
        end
    end 
    after_validation :reverse_geocode
end
