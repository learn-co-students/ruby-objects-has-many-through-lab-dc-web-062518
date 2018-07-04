require 'pry'
class Appointment
  attr_accessor :patient,:doctor,:date

  @@all = []
  def initialize(date,doctor,patient)
    @date = date
    @patient = patient
    @doctor = doctor

    @@all << self

      # binding.pry
  end

  def self.all
    @@all
  end

end
