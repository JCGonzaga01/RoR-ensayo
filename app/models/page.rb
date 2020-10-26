class Page < ApplicationRecord
    # Same with table relationship or foreign key
    # This will build relationship to Subject model class
    belongs_to :subject
end
