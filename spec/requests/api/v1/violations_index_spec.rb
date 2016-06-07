RSpec.describe "GET violations index" do
  it "returns a list of all violations" do
    Violation.create(
    violation_id: "1",
    inspection_id: "1",
    violation_category: "Garbage and Refuse",
    violation_date: "2012-01-03 00:00:00",
    violation_date_closed: "2012-02-02 00:00:00",
    violation_type: "Refuse Accumulation"
    )

    Violation.create(
    violation_id: "2",
    inspection_id: "2",
    violation_category: "Garbage and Refuse",
    violation_date: "2012-01-03 00:00:00",
    violation_date_closed: "2012-02-02 00:00:00",
    violation_type: "Refuse Accumulation"
    )

    Violation.create(
    violation_id: "2",
    inspection_id: "2",
    violation_category: "Garbage and Refuse",
    violation_date: "2012-01-03 00:00:00",
    violation_date_closed: "2012-02-02 00:00:00",
    violation_type: "Refuse Accumulation"
    )

    get "/api/v1/violations"

    expect(response.status).to eq 200
    json_body = JSON.parse(response.body)
    expect(json_body.count).to eq(3)

    violation = json_body[0]

    expect(violation).to eq ({
      "violation_id" => "1",
      "inspection_id" => "1",
      "violation_category" => "Garbage and Refuse",
      "violation_date" => "2012-01-03 00:00:00",
      "violation_date_closed" => "2012-02-02 00:00:00",
      "violation_type" => "Refuse Accumulation"
      })
  end
end
