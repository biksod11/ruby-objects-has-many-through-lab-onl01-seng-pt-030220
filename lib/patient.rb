class Patient

  attr_reader :date, :doctor

  @@all = []

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select {|a| a.patient == self}
  end

  def doctors
    appointments.map {|a| a.doctor}
  end
