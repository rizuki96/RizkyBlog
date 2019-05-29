class Book < ApplicationRecord
    validates :title, presence: true, uniqueness: true, length: {minimum: 4}

    def self.search(page)
        paginate :per_page => 5, :page => page
    end
end
