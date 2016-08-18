namespace :migration do
  desc "Adds usersnames"
  task add_usernames: :environment do
    User.find_each do |user|
      user.update_column(:username, "#{user.name.downcase}-#{user.surname.downcase}") unless user.username
    end
  end
end
