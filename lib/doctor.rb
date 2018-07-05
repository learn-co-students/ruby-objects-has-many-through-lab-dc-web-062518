require 'pry'

class Doctor

  @@all = []

  attr_accessor :name, :patient

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  #takes in a date and an instance of the Patient class and creates a new appointment. That appointment should know that it belongs to the doctor
  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
    #new_appointment.doctor = self
    #binding.pry
    #new_appointments
  end

  #that iterates through all appointments and finds those belonging to this doctor
  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
    # appointment.all do |appointment|
    #   if appointment = self
    # end
  end

  #that iterates over that doctor's appointments and collects the patient that belongs to each appointment
  def patients
    appointments.map do |appointment|
      appointment.patient
    end
  end

end
