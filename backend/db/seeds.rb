# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

workplaces = [
  ["TOKIUM", 1300, 1000],
  ["WorkA", 1000, 500],
  ["WorkB", 2000, 850]
]
workplaces.each do |name, hourly_rate, transportation_fee|
  Workplace.create(name: name, hourly_rate: hourly_rate, transportation_fee: transportation_fee)
end

shifts = [
  [1, "2024-05-01 09:00", "2024-05-01 18:00"],
  [2, "2024-05-02 16:00", "2024-05-02 21:00"],
  [3, "2024-05-03 13:00", "2024-05-03 21:00"]
]
shifts.each do |workplace_id, start_time, end_time|
  Shift.create(workplace_id: workplace_id, start_time: start_time, end_time: end_time)
end

incomes = [
  ["2024-05-01", 80000],
  ["2024-04-01", 80000]
]
incomes.each do |date, amount|
  Income.create(date: date, amount: amount)
end
