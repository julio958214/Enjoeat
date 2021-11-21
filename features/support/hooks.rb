Before do
  @rest = Rest.new
end

After do
  shot = page.save_screenshot("logs/temp_evidence.png")

  Allure.add_attachment(
    name: "Screenshot",
    type: Allure::ContentType::PNG,
    source: File.open(shot),
  )
end
