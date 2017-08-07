class Player < ApplicationRecord
  # Direct associations

  belongs_to :match,
             :counter_cache => true

  has_many   :tee_times,
             :dependent => :destroy

  belongs_to :team

  # Indirect associations

  # Validations

end
