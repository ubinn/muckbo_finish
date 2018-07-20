class RoomDestroyJob < ApplicationJob
  queue_as :default

  def perform(room_id)
    # Do something later
    Room.find(room_id).destroy
  end
end
