class UsersController < ApplicationController
  def show
    @name = current_user.name
    @notes = current_user.notes
  end
end
