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


end
