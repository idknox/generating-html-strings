class HTMLGenerator

  def initialize(layout = nil)
    @layout = layout
  end

  def section(string)
    layout("<section>#{string}</section>")
  end

  def unordered_list(array)
    layout("<ul><li>#{array.join("</li><li>")}</li></ul>")
  end

  def button(string, hash = nil)
    if hash
      layout("<button class='#{hash[:class]}'>#{string}</button>")
    else
      layout("<button>#{string}</button>")
    end
  end

  private

  def layout(par)
    if @layout
      @layout["CONTENT"] = par
      @layout
    else
      par
    end
  end

end
