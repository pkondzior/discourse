module Punbb
  class Forum < ActiveRecord::Base
    use_connection_ninja(:punbb)
    has_many :topics, class_name: 'Punbb::Topic'
    belongs_to :category, class_name: 'Punbb::Category', foreign_key: :cat_id
  end
end