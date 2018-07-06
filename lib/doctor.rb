require 'pry'

class Doctor

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all
  end

  def patients
    Appointment.all.map do |x|
      if x.doctor == self
      x.patient
      end
    end
  end

end
