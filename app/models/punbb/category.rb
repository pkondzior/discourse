module Punbb
  class Category < ActiveRecord::Base
    use_connection_ninja(:punbb)
    has_many :forums, class_name: 'Punbb::Forum', foreign_key: :cat_id
  end
end