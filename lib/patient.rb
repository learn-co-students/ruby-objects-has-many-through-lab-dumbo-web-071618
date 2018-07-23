require 'pry'
require_relative 'appointment.rb'


class Patient

  attr_accessor :name

  @@all = []

  def initialize (name)
    @name = name

    @@all << self

  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    new_appointment = Appointment.new(date, self, doctor)
    new_appointment
  end

  def appointments
    Appointment.all.select do |patients|
      patients.patient == self
    end
  end

  def doctors
    appointments.collect do |corresponding|
      corresponding.doctor
    end
  end

end
