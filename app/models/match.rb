class Match < ApplicationRecord
  # Direct associations

  has_many   :players,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
