require_relative "patient"
class Room

  class FullRoomException < Exception
  end

  attr_accessor :id

  def initialize(attributes = {})
    @capacity = attributes[:capacity] || 0
    @patients = []
  end

  def full?
    @capacity == @patients.size
  end

  def add_patient(patient)
    if full?
      fail FullRoomException, "The room is full"
    else
      patient.room = self
      @patients << patient
    end
  end
end


# begin
#   room1.add_patient(patient2)
# rescue Room::FullRoomException
#   p "That's fine, we won't add the patient"
# end


# p "our patients were added"
















