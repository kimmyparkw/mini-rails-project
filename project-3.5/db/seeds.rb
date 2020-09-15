# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


students = Student.create([{first_name: 'Rachel', last_name: 'Potts'}, {first_name: 'Joe', last_name: 'Hinojosa'}, {first_name: 'Casara', last_name: 'Han'}, {first_name: 'Jessica', last_name: 'Nguyen'}, {first_name: 'Julia', last_name: 'Kim'}, {first_name: 'Melissa', last_name: 'Brown'}])
courses = Course.create([{student_id: 3 , title: 'Psychology', subject: 'Psychology'}, {student_id: 6 , title: 'Figure Drawing', subject: 'Art'}, {student_id: 2 , title: 'Black and White Photography', subject: 'Art'}, {student_id: 6 , title: 'Organic Chemistry', subject: 'Chemistry'}, {student_id: 5 , title: 'Calculus', subject: 'Math'}, {student_id: 4 , title: 'The Renaissance', subject: 'History'}, {student_id: 1 , title: 'Intermediate Piano', subject: 'Music'}, {student_id: 2 , title: 'Microbiology', subject: 'Biology'}, {student_id: 3 , title: 'British Literature', subject: 'English'}])