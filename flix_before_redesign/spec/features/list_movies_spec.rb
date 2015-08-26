require 'rails_helper'

describe "Viewing the list of movies" do
  
	it "shows the movies" do

		movie1 = Movie.create(movie_attributes)

		visit movies_url

		expect(page).to have_text("1 Movie")

		expect(page).to have_text(movie1.description)
		expect(page).to have_text(movie1.rating)
		expect(page).to have_text(movie1.total_gross)
		expect(page).to have_text(movie1.released_on)

		# expect(page).to have_text(movie3.title)
		# expect(page).to have_text(movie3.description)
		# expect(page).to have_text(movie3.rating)
		# expect(page).to have_text(movie3.total_gross)
		# expect(page).to have_text(movie3.released_on)

		# expect(page).to have_text(movie2.title)
		# expect(page).to have_text(movie2.description)
		# expect(page).to have_text(movie2.rating)
		# expect(page).to have_text(movie2.total_gross)
		# expect(page).to have_text(movie2.released_on)
	end

end