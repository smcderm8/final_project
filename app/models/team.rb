class Team < ApplicationRecord
  # Direct associations

  has_many   :players

  has_many   :tee_times

  # Indirect associations

  # Validations

end
