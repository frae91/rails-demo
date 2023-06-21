class Department < ApplicationRecord
    belongs_to :manager
    has_many :employees
end
