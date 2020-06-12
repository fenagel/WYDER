module MetaTagsHelper
  def meta_title
    content_for?(:meta_title) ? content_for(:meta_title) : DEFAULT_META["Wyder - stop searching, start finding"]
  end

  def meta_description
    content_for?(:meta_description) ? content_for(:meta_description) : DEFAULT_META["High quality and informative video platform for important life decisions"]
  end

  def meta_image
    meta_image = "http://res.cloudinary.com/dvt0t51oq/image/upload/v1591953137/aiu9jpwhblx0uxk4csyg.jpg"
    # little twist to make it work equally with an asset or a url
    meta_image.starts_with?("http") ? meta_image : image_url(meta_image)
  end
end
