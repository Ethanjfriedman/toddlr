class PrattlesController < ApplicationController
  before_action :require_current_user, only: :create

  def create
    @prattle = current_user.prattles.new(prattle_params)

    if @prattle.save
      redirect_to current_user
    else
      flash[:message] = @prattle.errors.full_messages.to_sentence
      redirect_to current_user
    end
  end

  private
  def prattle_params
    params.require(:prattle).permit(:content)
  end
end
