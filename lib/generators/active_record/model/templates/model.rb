<% module_namespacing do -%>
class <%= class_name %> < <%= parent_class_name.classify %>
  ###############
  # Constants
  ###############

  ###############
  # Includes
  ###############

  ###############
  # Accessors
  ###############

  ###############
  # Validations
  ###############

  ###############
  # Associations
  ###############
<% attributes.select(&:reference?).each do |attribute| -%>
  belongs_to :<%= attribute.name %><%= ', polymorphic: true' if attribute.polymorphic? %>
<% end -%>
<% if attributes.any?(&:password_digest?) -%>

  ###############
  # Secure Pass
  ###############
  has_secure_password
<% end -%>

  ###############
  # Nested Attr.
  ###############

  ###############
  # Class Methods
  ###############
  class << self
  end

  ###############
  # Public API
  ###############

  ###############
  # Protected
  ###############
  protected

  ###############
  # Private
  ###############
  private

end
<% end -%>
