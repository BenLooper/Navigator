class Text < ApplicationRecord
    has_one :prompt 
    belongs_to :choice
    belongs_to :project
end
