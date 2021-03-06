defmodule RealWorld.Factory do

  use ExMachina.Ecto, repo: RealWorld.Repo

  def user_factory do
    %RealWorld.Accounts.User{
      email: "john@jacob.com",
      username: "john",
      password: "some password",
      bio: "some bio",
      image: "some image"
    }
  end

  def article_factory do
    %RealWorld.Blog.Article{
      body: "some body",
      description: "some description",
      title: "some title",
      tag_list: ["tag1", "tag2"],
      slug: "some-tile",
      author: build(:user)
    }
  end
end
