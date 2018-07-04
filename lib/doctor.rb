class Doctor
  attr_reader :name,:appointments

  @@all = []
  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    @appointments = Appointment.all.select{|appointment| appointment.doctor = self}
  end

  def new_appointment(date,patient)
    Appointment.new(patient,self,date)
  end

  def patients
    appointments.map{|appointment| appointment.patient}
  end

end
