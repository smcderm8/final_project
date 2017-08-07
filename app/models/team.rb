class Team < ApplicationRecord
  # Direct associations

  has_many   :players

  has_many   :tee_times

  # Indirect associations

  has_many   :matches,
             :through => :tee_times,
             :source => :match

  # Validations

end
