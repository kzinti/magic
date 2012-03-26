module CardsHelper
  def card_file_name(card_name)
    card_name.gsub(/\s/, '_').downcase << ".jpg"
  end
end
