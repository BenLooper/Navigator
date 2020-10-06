class Prompt < ApplicationRecord
    has_many :choices
    belongs_to :project
    belongs_to :text
end
