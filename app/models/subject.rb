class Subject < ApplicationRecord
    # This is to instantiate the relationship of Subject class to Page Class
    # Below states that a Subject object can hold multiple Page objects
    has_many :pages

end 
