class Fisbum < ApplicationRecord
    belongs_to :fisbumer, class_name: 'User'
    belongs_to :fisbuming, class_name: 'User'
end
