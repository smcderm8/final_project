class Player < ApplicationRecord
  # Direct associations

  belongs_to :match,
             :counter_cache => true

  has_many   :tee_times,
             :dependent => :destroy

  belongs_to :team

  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
