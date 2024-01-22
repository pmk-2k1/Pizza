class GuestsController < ApplicationController
  skip_before_action :authenticate_user!
  def chicken
  end
  def spaghetti
  end
  def pizza
  end
  def water
  end
  def combo
  end
end
