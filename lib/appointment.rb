require 'pry'

class Appointment

  attr_reader :date
  attr_accessor :doctor, :patient

  @@all = []

  def self.all
    @@all
  end

  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
    self.class.all << self
  end

end

# binding.pry
puts "hello"
