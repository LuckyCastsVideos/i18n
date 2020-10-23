class Application
  Habitat.create do
    setting name : String
    setting support_email : String
  end
end

Application.configure do |settings|
  settings.name = "internationalization"
  settings.support_email = "no-reply@internationalization.com"
end
