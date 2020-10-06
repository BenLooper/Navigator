class Project < ApplicationRecord
    has_many :prompts
    has_many :choices
    has_many :texts
end
