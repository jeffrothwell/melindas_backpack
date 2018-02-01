class Backpack
  def initialize(attributes)
    @attributes = attributes # a hash containing day_of_week and weather keys
    @items = []
    add_items_based_on_attributes
  end

  def items
    @items
  end

  def add_items_based_on_attributes
    pack_clothes_based_on_weather
    pack_gym_shoes_on_gym_days
    pack_lunch_on_weekdays
  end

  # Prints a summary packing list for Melinda's backpack
  def packing_list
    output = []
    output << "Melinda, here's your packing list!"
    output << "Day: #{day_of_week}, Weather: #{weather}"
    output << ""

    @items.each do |item|
      output << "- #{item}"
    end
    output.join("\n")
  end

  def pack_clothes_based_on_weather
    # need pants and shirt every day
    @items << 'pants'
    @items << 'shirt'
    if weather == 'rainy'
      @items << 'umbrella'
    elsif weather == 'cold'
      @items << 'jacket'
    end
  end

  def pack_gym_shoes_on_gym_days
    if day_of_week == 'monday' || day_of_week == 'thursday'
      @items << 'gym shoes'
    end
  end

  def pack_lunch_on_weekdays
    if day_of_week != 'saturday' && day_of_week != 'sunday'
      @items << 'packed lunch'
    end
  end

  def day_of_week
    @attributes[:day_of_week]
  end

  def weather
    @attributes[:weather]
  end
end
