module Punbb
  class Post < ActiveRecord::Base
    use_connection_ninja(:punbb)
    belongs_to :topic, class_name: 'Punbb::Topic'
    belongs_to :poster, class_name: 'Punbb::User'
  end
end