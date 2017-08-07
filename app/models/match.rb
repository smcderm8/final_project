class Match < ApplicationRecord
  # Direct associations

  belongs_to :course

  has_many   :tee_times,
             :dependent => :destroy

  has_many   :players,
             :dependent => :nullify

  # Indirect associations

  has_many   :teams,
             :through => :tee_times,
             :source => :team

  # Validations

end
