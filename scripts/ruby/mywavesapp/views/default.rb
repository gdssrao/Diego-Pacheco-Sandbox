class Mywavesapp::Views::Default  < Hoshi::View[:html4]
  
  include Waves::Views::Mixin
  
  def stylesheet
    style { view(:css).default }
  end
  
  def layout
    doctype
    html {
      head { stylesheet }
      body { yield }
    }
  end
  
end