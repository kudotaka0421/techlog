class UsersController < ApplicationController


  params.require(:user).permit(:nickname, :email,:avatar)

end
