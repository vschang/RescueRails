# disable the Rails wrapping of errored attributes fields
# as it breaks Bootstrap formatting
ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  tag_element = Nokogiri::HTML::DocumentFragment.parse(html_tag).children.first
  bs41 = tag_element.attribute('data-bootstrap41')&.value == "true"
  raw_element = html_tag.html_safe

  # 'normal' actionview wrapping:
  wrapped_element = "<div class=\"field_with_errors\">#{html_tag}</div>".html_safe

  # Don't wrap if Bootstrap 4.1
  bs41 ? raw_element : wrapped_element
end
