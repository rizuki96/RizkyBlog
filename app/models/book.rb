class Book < ApplicationRecord
    validates :title, presence: true, uniqueness: true, length: {minimum: 4}
end
