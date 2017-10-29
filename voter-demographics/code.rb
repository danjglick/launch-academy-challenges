# initialize hash of hashes
voters = 
{
	smith: 
	{
		age: 25,
		income: 50_000,
		household: 1,
		gender: "male",
		education: "college"
	},
	davies: 
	{
		age: 30,
		income: 60_000,
		household: 3,
		gender: "female",
		education: "highschool"
	},
	farelly: 
	{
		age: 32,
		income: 80_000,
		household: 2,
		gender: "unspecified",
		education: "college"
	},
	favreau: 
	{
		age: 35,
		income: 65_000,
		household: 4,
		gender: "female",
		education: "college"
	},
	mcnulty: 
	{
		age: 38,
		income: 63_000,
		household: 3,
		gender: "male",
		education: "college"
	},
	minahan: 
	{
		age: 48,
		income: 78_000,
		household: 5,
		gender: "male",
		education: "highschool"
	},
	umani: 
	{
		age: 45,
		income: 75_000,
		household: 2,
		gender: "female",
		education: "college"
	},
	perault: 
	{
		age: 24,
		income: 45_000,
		household: 1,
		gender: "male",
		education: "no highschool"
	},
	stamper: 
	{
		age: 45,
		income: 75_000,
		household: 1,
		gender: "male",
		education: "college"
	},
	underwood: 
	{
		age: 52,
		income: 100_000,
		household: 2,
		gender: "male",
		education: "college"
	}
}

# age avg
sum_ages = 0
voters.each_value do |voter|
	sum_ages += voter[:age]
end
avg_age = sum_ages.to_f / voters.size
puts "Age avg: #{avg_age}"

# income avg
sum_incomes = 0
voters.each_value do |voter|
	sum_incomes += voter[:income]
end
avg_income = sum_incomes.to_f / voters.size
puts "Income avg: #{avg_income}"

# household avg
sum_households = 0
voters.each_value do |voter|
	sum_households += voter[:household]
end
avg_household = sum_households.to_f / voters.size
puts "Household avg: #{avg_household}"

# female %
num_females = 0
voters.each_value do |voter|
	if voter[:gender] == "female"
		num_females += 1
	end
end
perc_female = (num_females.to_f / voters.size) * 100
puts "Female %: #{perc_female}"

# male %
num_males = 0
voters.each_value do |voter|
	if voter[:gender] == "male"
		num_males += 1
	end
end
perc_male = (num_males.to_f / voters.size) * 100
puts "Male %: #{perc_male}"

# unspecified-gender %
num_unspecified = 0
voters.each_value do |voter|
	if voter[:gender] == "unspecified"
		num_unspecified += 1 
	end
end
perc_unspecified = (num_unspecified.to_f / voters.size) * 100
puts "Unspecified-gender %: #{perc_unspecified}"

# college %
num_college = 0
voters.each_value do |voter|
	if voter[:education] == "college"
		num_college += 1
	end
end
perc_college = (num_college.to_f / voters.size) * 100
puts "College %: #{perc_college}"

# high school %
num_highschool = 0
voters.each_value do |voter|
	if voter[:education] == "highschool"
		num_highschool += 1
	end
end
perc_highschool = (num_highschool.to_f / voters.size) * 100
puts "Highschool %: #{perc_highschool}"

# no-highschool %
num_no_highschool = 0
voters.each_value do |voter|
	if voter[:education] == "no highschool"
		num_no_highschool += 1
	end
end
perc_no_highschool = (num_no_highschool.to_f / voters.size) * 100
puts "No-highschool %: #{perc_no_highschool}"


