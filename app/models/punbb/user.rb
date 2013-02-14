module Punbb
  class User < ActiveRecord::Base
    use_connection_ninja(:punbb)
    has_many :posts, foreign_key: :poster_id, class_name: 'Punbb::Post'
    has_and_belongs_to_many :subscriptions, join_table: :subscriptions, foreign_key: :user_id,
                            association_foreign_key: :topic_id, class_name: 'Punbb::Topic'
  end
end