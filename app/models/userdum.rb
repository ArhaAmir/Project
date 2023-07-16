class Userdum < ApplicationRecord
    has_one :help, inverse_of: :userdum
    accepts_nested_attributes_for :help
end
