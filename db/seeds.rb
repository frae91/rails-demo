# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do
    Manager.create({
        name: Faker::Name.name,
        sex: Faker::Gender.binary_type,
        birthdate: Faker::Date.birthday(min_age: 30, max_age: 65),
        salary: Faker::Number.decimal(l_digits: 5, r_digits: 2)
    })
end

manager_ids = [1,2,3]
manager_ids.each do |id|
    Department.create(
        {
            manager_id: id,
            name: Faker::Company.industry,
        }
    )
end

10.times do
    Employee.create(
        {
            name: Faker::Name.name,
            birthdate: Faker::Date.birthday(min_age: 18, max_age: 65),
            sex: Faker::Gender.binary_type,
            salary: Faker::Number.decimal(l_digits: 4, r_digits: 2),
            department_id: Faker::Number.within(range: 1..3)
        }
    )
end