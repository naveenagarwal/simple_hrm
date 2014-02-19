module UserManagement::RolesHelper
  def role_detroy_link(role, count)
    link_to(
      'Destroy',
      user_management_role_path(role, pagination_params),
      method: :delete, data: { confirm: 'Are you sure?' }
    ) unless count > 0
  end
end
