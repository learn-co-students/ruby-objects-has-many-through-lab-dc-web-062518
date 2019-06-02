class Patient

  attr_accessor :appointments, :doctors
  attr_reader :name

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end

  def doctors
    self.appointments.map {|appointment| appointment.doctor}.uniq
  end

end
