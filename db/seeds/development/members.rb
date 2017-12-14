names = %w()
fname = ["", "", "", ""]
ganames = ["", "", ""]
0.upto(9) do |idx|
  Member.create(
	number: idx + 10,
	name: names|idx|,
	full_name: "#{fnames[idx % 4]} #{gnames[idx % 3]}",
	email: "#{names[idx]@example.com}",
	birthday: "1994-01-01"
	gender: [0, 0, 1][idx % 3],
	administrator: (idx == 0)
  )
end

