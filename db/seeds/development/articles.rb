body =
	"xxx\n" +
	"xxx" +
	"xxx\n" +
	"xxx"

0.upto(9) do |idx|
	Atricle.create(
	title: "#{idx}",
	body: body,
	released_at: 8.days.ago.advance(days: idx),
	expired_at: 2.days.ago.advance(days: idx),
	member_only: (idx % 3 == 0)
	)
end
