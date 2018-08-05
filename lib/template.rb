module Email
  module Creditas
    class Template

      def generate_email(name, data)
        template = %q{
          <% if name %>
            Bem vindo, <%=name%>
          <% end %>

          A partir de <% if data.eqls?

        }
      end
    end
  end
end