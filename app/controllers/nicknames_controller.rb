class NicknamesController < ApplicationController
  def index
    @nicknames = Nickname.all
  end

  def new
    @nickname = Nickname.new
  end

  def create
    n = Nickname.create(nickname_params)
    n.update_attributes(generated_name: n.generate_nickname )
    redirect_to nicknames_path
  end

  private

  def nickname_params
    params.require(:nickname).permit(:name, :super_hero)
  end
end
