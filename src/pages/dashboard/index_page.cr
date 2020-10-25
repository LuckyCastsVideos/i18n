class Dashboard::IndexPage < MainLayout
  def page_title
    "Dashboard"
  end

  def content
    div class: "bg-white overflow-hidden shadow rounded-lg" do
      div class: "border-b border-gray-200 px-4 py-5 sm:px-6" do
        h1 t("simple_example.hello"), class: "font-medium text-lg"
        h1 t("interpolation_example.hello", {username: current_user.email}), class: "font-medium text-lg"
        h1 t("count_example.apple", count: 2), class: "font-medium text-lg"
      end
    end
  end
end

class TranslationFileExample
  # config/locales/en.yml
  #   dashboard:
  #     greeting: Hello!
  #
  # config/locales/es.yml
  #   dashboard:
  #     greeting: Hola!
  #
  # config/locales/fr.yml
  #   dashboard:
  #     greeting: Bonjour!
end
