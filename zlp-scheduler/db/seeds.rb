# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@user = User.new
        @user.firstname = 'Lauren'
        @user.lastname = 'Haylock'
        @user.uin = 725000950
        @user.email = 'laurenrhaylock@tamu.edu'
        @user.role = 'admin'
        @user.password = "Temp"
        @user.save
        
@user = User.new
        @user.firstname = 'Steven'
        @user.lastname = 'Universe'
        @user.uin = 424242
        @user.email = 'misteruniverse@tamu.edu'
        @user.role = 'student'
        @user.password = "Temp"
        @user.save

@terms = Term.ImportTermList!
@terms.each do |t|
        Term.create!(t)
end 
@term = @terms.all[0]
@term.update_attributes(:active => 1)