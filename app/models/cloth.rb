class Cloth < ApplicationRecord
    belongs_to :cloth_type
 self.table_name = "clothes"

end
