class Choice < ApplicationRecord
    has_one :text
    belongs_to :project
    belongs_to :prompt
end
