class TeeTime < ApplicationRecord
  # Direct associations

  belongs_to :match

  belongs_to :player

  belongs_to :team

  # Indirect associations

  # Validations

end
