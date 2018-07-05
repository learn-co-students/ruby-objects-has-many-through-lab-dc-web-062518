require 'pry'


class Patient


attr_accessor :name, :appointment, :doctor, :appointments

@@all = []

def initialize(name)
  @name = name
  @doctors = []
 @@all << self
end


def self.all
  @@all
end

def appointments
  Appointment.all.select do |app|
    if app.patient == self
      app
    end
  end

end


def new_appointment(doctor, date)
 Appointment.new(self, doctor, date)
end


def doctors
  self.appointments.select do |app|
    if self == app.patient
      @doctors<< app.doctor
    end
  end
  @doctors
end











end
