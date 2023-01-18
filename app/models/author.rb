class Author < ApplicationRecord
    validates :name, presence: true
    validates :email.downcase, uniqueness: true 
end
