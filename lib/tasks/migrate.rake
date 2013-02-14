

namespace :punbb do
  desc "Migrate Users from punbb"
  task :migrate => :environment do
    # Migrate Users
    Punbb::User.find_each do |u|
      user = User.new
      {
        id: u.id,
        username: u.username,
        name: u.realname,
        email: u.email,
        active: u.activate_string.present? && u.activate_key.present?,
        bio_raw: u.signature
      }.each do |k, v|
        user.send("#{k}=", v)
      end
      user.save
    end
    # Migrate Categories
    # Migrate Forums
    # Migrate Topics
    # Migrate Posts
  end
end

