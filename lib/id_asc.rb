require "active_support"
require "id_asc/version"

ActiveSupport.on_load(:active_record) do
  scope :id_asc, -> { order(id: :asc) }
end
