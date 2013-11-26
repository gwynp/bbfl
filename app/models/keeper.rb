class Keeper < ActiveRecord::Base
	belongs_to :user

	validates :first, presence: true
  	validates :last, presence: true
  	validates :team, presence: true
  	validates :keeper_year, presence: true
  	validates_length_of :team, :is => 3, :message => "should have a three letter abbreviation please."

  	validate :keeper_count_within_limit, :on => :create

  def keeper_count_within_limit
    if self.user.keepers(:reload).count >= 5
      errors.add(:base, "The number of keepers shall be five and five shall be the number of keepers")
    end
  end
end
