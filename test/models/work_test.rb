require "test_helper"

describe Work do
  let (:text_work) {
    Work.new(
      category: "book",
      title: "text book",
      creator: "anonymous",
      publication_year: 2010
    )
  }

  it "can be instantiated" do
    expect(text_work.valid?).must_equal true
  end

  describe "validations" do 
    it "must have a category" do
      text_work.category = nil

      expect(text_work.valid?).must_equal false
      expect(text_work.errors.messages).must_include :category
      expect(text_work.errors.messages[:category]).must_equal ["can't be blank"]
    end

    it "must have a title" do
      text_work.title = nil

      expect(text_work.valid?).must_equal false
      expect(text_work.errors.messages).must_include :title
      expect(text_work.errors.messages[:title]).must_equal ["can't be blank"]
    end

    it "must have a creator" do
      text_work.creator = nil

      expect(text_work.valid?).must_equal false
      expect(text_work.errors.messages).must_include :creator 
      expect(text_work.errors.messages[:creator]).must_equal ["can't be blank"]
    end

    it "must have a publication year" do
      text_work.publication_year = nil

      expect(text_work.valid?).must_equal false
      expect(text_work.errors.messages).must_include :publication_year 
      expect(text_work.errors.messages[:publication_year]).must_equal ["can't be blank", "is not a number"]
    end
  end
end