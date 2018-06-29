class Appointment

  attr_accessor :patient, :doctor
  attr_reader :date

  @@all = []

  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
    patient.appointments << self
    doctor.appointments << self
    doctor.patients << patient
    patient.doctors << doctor
  end

  def self.all
    @@all
  end
end
