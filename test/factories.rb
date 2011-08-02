Factory.define :user do |u|
  u.sequence( :username ) { |n| "teache#{'r' * n}" }
  u.sequence( :email )    { |n| "teacher#{n}@school.com" }
  u.password  'supersecret'
  u.confirmed_at Time.now
  
  Factory.define :teacher do |t|
  t.control_number '123'
  t.name 'Adriana'
  t.paternal_surname 'Cardenas'
  t.maternal_surname 'Martinez'
  t.association :user
   
   end
end

Factory.define :campus do |c|
  c.sequence( :name ) { |n| "campus #{n}" }
end

Factory.define :study_plan do |s|
  s.sequence( :name ) { |n| "study plan #{n}" }
  s.association :campus
end
