class Appointment
  attr_reader :date, :doctor
  attr_accessor :patient

  @@all = []

  def self.all
    @@all
  end

  def initialize(date, doctor, patient)
    @date = date
    @doctor = doctor
    @patient = patient

    @@all << self
  end
end
