FactoryBot.define do
  factory :user do
    id {1}
    email {"test@user.com"}
    password {"123456"}
    full_name {"John Doe"}
    personal_website_url {"https://dhh.dk"}
    # Add additional fields as required via your User model
  end

  # Not used in this tutorial, but left to show an example of different user types
  # factory :admin do
  #   id {2}
  #   email {"test@admin.com"}
  #   password {"qwerty"}
  #   admin {true}
  # end
end