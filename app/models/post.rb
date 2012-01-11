class Post < ActiveRecord::Base
  validates :nombre_evento,  :presence => true
  validates :fecha, :presence => true
  validates :hora, :presence => true
                    
end
