ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    div :class => "blank_slate_container", :id => "dashboard_default_message" do
      span :class => "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
      column do
        panel "Info" do
          para "Bem-vindos!"
        end
      end

      column do
        panel "clientes mais recentes" do
          ul do
            Client.last(5).map do |client|
              li link_to(client.name, admin_client_path(client))
            end
          end
        end
      end
    end
  end # content
end
