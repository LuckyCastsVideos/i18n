module Translator
  LANGUAGE_DEFAULT    = I18n.default_locale
  LANGUAGES_AVAILABLE = [LANGUAGE_DEFAULT]

  # Modify as necessary for other languages. For example:
  # LANGUAGE_DEFAULT = I18n.default_locale
  # LANGUAGES_AVAILABLE = [I18n.default_locale, "es"]

  # For more information on options you can pass to I18n.translate:
  # See https://github.com/TechMagister/i18n.cr
  def t(*args, **nargs)
    I18n.locale = user_language
    I18n.translate(*args, **nargs)
  end

  # In places where current_user / user isn't available, be sure to override this method:
  # quick_def user_language, LANGUAGE_DEFAULT
  def user_language
    current_user.try(&.language) || LANGUAGE_DEFAULT
  end
end
