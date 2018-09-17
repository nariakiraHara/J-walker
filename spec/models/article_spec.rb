require 'rails_helper'

RSpec.describe Article, type: :model do
  # タイトルが無かった場合にはエラーとする。
  it "is valid with a title" do
    @user = User.new(
    email: "nariakra@email.com",
    password: "hogehoge",
    password_confirmation: "hogehoge",
    )

    @article = @user.articles.build(
    title: "",
    )
    expect(@article).to_not be_valid
  end
end
