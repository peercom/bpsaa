ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do

    # app/admin/dashboard.rb
    section "Letzte Änderungen" do
      table_for PaperTrail::Version.order('id desc').limit(20) do # Use PaperTrail::Version if this throws an error
        column ("Item") { |v| v.item.try(:name) }
        #column ("Item") { |v| link_to v.item, [:admin, v.item] } # Uncomment to display as link
        column ("Vorgang") { |v| v.event }
        column ("Typ") { |v| v.item_type.underscore.humanize }
        column ("Geändert am") { |v| v.created_at.to_s :long }
        column ("Nutzer") { |v| link_to AdminUser.find_by_email(v.whodunnit).email, [:admin, AdminUser.find_by_email(v.whodunnit)] }
      end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    #columns do
    #  column do
    #    panel "Recent Categories" do
    #      ul do
    #        Category.recent(5).map do |post|
    #          li link_to(category.name, admin_category_path(category))
    #        end
    #      end
    #    end
    #  end
    #end
    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
