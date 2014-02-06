require 'faker'

# create a few users
User.create :name => 'Dev Bootcamp Student', :email => 'me@example.com', :password => 'password'
5.times do
  User.create :name => Faker::Name.name, :email => Faker::Internet.email, :password => 'password'
end

# create a few technical skills
computer_skills = %w(Ruby Sinatra Rails JavaScript jQuery HTML CSS)
computer_skills.each do |skill|
  Skill.create :name => skill, :context => 'technical'
end

# create a few creative skills
design_skills = %w(Photoshop Illustrator Responsive-Design)
design_skills.each do |skill|
  Skill.create :name => skill, :context => 'creative'
end

Proficiency.create(:user_id => 1, :skill_id => 1, :years => 2, :formal => 0)
Proficiency.create(:user_id => 3, :skill_id => 3, :years => 2, :formal => 1)
Proficiency.create(:user_id => 2, :skill_id => 5, :years => 2, :formal => 0)
Proficiency.create(:user_id => 4, :skill_id => 3, :years => 2, :formal => 1)
Proficiency.create(:user_id => 5, :skill_id => 1, :years => 2, :formal => 0)
Proficiency.create(:user_id => 6, :skill_id => 1, :years => 2, :formal => 0)
