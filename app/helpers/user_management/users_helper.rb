module UserManagement::UsersHelper
  def update_password_on_edit
    return nil unless action_is? [:edit, :update]

    "<fieldset class='span9'>
      #{check_box_tag 'update_password', 'yes', params[:update_password]}
      #{label_tag 'update_password', 'Update Passwors', class: 'checkbox inline'}
    </fieldset>".html_safe
  end

  def action_is?(action_names)
    [action_names].flatten.each do |action_name|
      return true if params[:action].to_sym == action_name
    end

    false
  end
end
