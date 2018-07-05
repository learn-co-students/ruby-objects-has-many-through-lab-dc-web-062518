require 'pry'

class Doctor

attr_accessor :name, :appointment, :patient

@@all = []

def initialize(name)
  @name = name
  @patients = []
  @@all << self
end

def self.all
  @@all
end


def new_appointment(patient, date)
 Appointment.new(patient, self, date)
end

def appointments
  Appointment.all.select do |app|
    if app.doctor == self
      app
    end
  end

end


def patients
  self.appointments.select do |app|
    if self == app.doctor
       @patients<<app.patient
    end
  end
  @patients
end










end
