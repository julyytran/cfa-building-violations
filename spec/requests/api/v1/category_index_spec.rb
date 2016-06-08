RSpec.describe "GET categories index" do
  it "returns a list of all categories" do
    Category.create(name: "Trash", count: 2, earliest_violation_date: "2012-01-03", latest_violation_date: "2012-12-12")
    Category.create(name: "Water", count: 3, earliest_violation_date: "2012-01-04", latest_violation_date: "2012-12-13")
    Category.create(name: "Bugs", count: 4, earliest_violation_date: "2012-01-05", latest_violation_date: "2012-12-14")

    get "/api/v1/categories"

    expect(response.status).to eq 200
    json_body = JSON.parse(response.body)
    expect(json_body.count).to eq(3)

    category = json_body[0]

    expect(category).to eq ({
      "name" => "Bugs",
      "count" => 4,
      "earliest_violation_date" => "2012-01-05",
      "latest_violation_date" => "2012-12-14"
      })
  end
end
