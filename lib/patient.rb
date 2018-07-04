class Patient
  attr_accessor :name,:appointments,:doctors
  @@all = []
  def initialize(name)
    @name = name

    @@all << self
  end
  def self.all
    @@all
  end

  def appointments
    @appointments = Appointment.all.select{|appointment| appointment.patient = self}
  end

  def new_appointment(date,doctor)
    Appointment.new(self,date,doctor)
  end

  def doctors
    @doctors = appointments.map{|appointment| appointment.doctor}
  end
end
