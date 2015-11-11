require './article'

describe Article  do	

	context "testing articles" do
		
		let(:new_article){Article.new}
		let(:full_article_test){Article.new(title: "hi there", body: "We have some text", author: "Rancy")}
		let(:first_letter){Article.new(author: "Quincy")}
		let(:title_html){Article.new(title: "Howdy")}
		# let(:starts_with_q){}

		it "is title empty?" do
			expect(full_article_test.title?).to eq(true)
		end

		it "should return true" do
			expect(full_article_test.body?).to eq(true)
		end

		it "Author doesn't starts with Q" do
			expect(full_article_test.authors_name_starts_with_q?).to eq(false)
		end

		it "Author stats with Q" do
			expect(first_letter.authors_name_starts_with_q?).to eq(true)
		end

		it "Title at html will return true" do
			expect(title_html.title_as_html).to eq("<h1>Howdy</h1>")
		end

		it " should pass the author_as_html test" do
			expect(full_article_test.author_as_html).to eq("<b>Rancy</b>")
		end

		it " should join the body as one pretty paragraph tag" do
			expect(full_article_test.body_as_html).to eq("<p>We have some text</p>")
		end

		after(:each) do
			puts "---Testing Complete---"

		end
	end

end