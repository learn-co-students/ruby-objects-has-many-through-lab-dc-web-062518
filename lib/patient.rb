require 'pry'
class Patient
  @@all = []

  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    
    app = Appointment.new(date, doctor, self)
    @appointments << app
    app
  end

  def doctors
    appos = Appointment.all.select do |appointment|
      appointment.patient == self
    end
    appos.map do |appo|
      appo.doctor
    end
  end

end
