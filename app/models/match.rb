class Match < ApplicationRecord
  # Direct associations

  has_many   :tee_times,
             :dependent => :destroy

  has_many   :players,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
