class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: {minimum: 100}

    def create
        author = Author.create(author_params)
        if author.valid?
            render json: author, status: :created
        else
            render json: { error: author.errors }, status: :unprocessable_entity
        end
    end

end
