require 'pry'

class Doctor

  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select{|appointment| appointment.doctor == self}
  end

  def patients
    appointments.map{|appointment| appointment.patient}
  end

end
