require 'pry'

class Doctor

  attr_accessor :name

  @@all = []


  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    Appointment.all.find_all {|appointment| appointment.doctor == self}
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
  end

  def patients
    self.appointments.map {|appointment| appointment.patient}.uniq
  end


end
#
# binding.pry
#
#
#
# puts"hi"
