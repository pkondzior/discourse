module Punbb
  class Topic < ActiveRecord::Base
    use_connection_ninja(:punbb)

    belongs_to :forum, class_name: 'Punbb::Forum'
    has_many :posts, class_name: 'Punbb::Post'
    has_and_belongs_to_many :subscribers, join_table: :subscriptions, foreign_key: :topic_id,
                            association_foreign_key: :user_id, class_name: 'Punbb::User'
  end
end