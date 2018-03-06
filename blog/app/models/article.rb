class Article < ApplicationRecord
	validates :title, presence: true
	validates :poster_name, presence: true
	validates :text, presence: true
	default_scope { order(created_at: :desc)}
end
