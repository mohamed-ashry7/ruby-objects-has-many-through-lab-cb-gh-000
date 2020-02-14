class Doctor

  attr_accessor :name
  @@all = []
  def initialize (name )
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient , date)
    Appointment.new(date,patient , self)
  end

  def appointments
    Appointment.all.select {|a| a.doctor == self  }
  end

  def patients
    Appointment.all.map {|a| a.patient if a.doctor == self  }
  end
end
