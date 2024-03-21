module UserService
    module Base
      def self.create_user(params)
        user = User.new(params)
        if user.save
          user
        else
          user.errors
        end
      end
      def self.filter_users(params)
        users = User.all
        users = users.where(name: params[:name]) if params[:name].present?
        users = users.where(email: params[:email]) if params[:email].present?
        users


    end
  end
end