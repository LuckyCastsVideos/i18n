class Dashboard::IndexPage < MainLayout
  def page_title
    "Dashboard"
  end

  def content
    div class: "bg-white overflow-hidden shadow rounded-lg" do
      div class: "border-b border-gray-200 px-4 py-5 sm:px-6" do
        h1 "Hello", class: "font-medium text-lg"
      end
    end
  end
end

class TranslationFileExample
  # translations.yml
  #
  # en:
  #   dashboard:
  #     greeting: Hello!
  #
  # es:
  #   dashboard:
  #     greeting: Hola!
  #
  # fr:
  #   dashboard:
  #     greeting: Bonjour!
end
