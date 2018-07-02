require 'pry'
class Doctor
  @@all = []
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    @appointments = Appointment.new(date, self, patient)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    arr =[]
    self.appointments.map do |appointment|
      appointment.patient
    end
  end

end
