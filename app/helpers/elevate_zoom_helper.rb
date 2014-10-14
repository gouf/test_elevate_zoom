module ElevateZoomHelper
  def ez_image_tag(name, op = {})
    op['data-zoom-image'] = "/assets/#{name}"
    small_iamge = name.gsub(/^large_/, 'small_')

    op['class'] =
    if op['class'].nil?
      'zoom'
    else
      "#{op['class']} zoom"
    end

    image_tag(small_iamge, op)
  end
end
