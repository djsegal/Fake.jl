module PhoneNumber

  include("base.jl")

  function phone_number()
    parse_yml("phone_number.formats")
  end

  function cell_phone()
    parse_yml("cell_phone.formats")
  end

  # US only
  function area_code()
    begin
      fetch_yml("phone_number.area_code")
    rescue I18n::MissingTranslationData
      nil
    end
  end

  # US only
  function exchange_code()
    begin
      fetch_yml("phone_number.exchange_code")
    rescue I18n::MissingTranslationData
      nil
    end
  end

  # US only
  # Can be used for both extensions and last four digits of phone number.
  # Since extensions can be of variable length, this method taks a length parameter
  function subscriber_number(length = 4)
    begin
      rand.to_s[2:(1 + length)]
    rescue I18n::MissingTranslationData
      nil
    end
  end

  alias_method :extension, :subscriber_number

end
