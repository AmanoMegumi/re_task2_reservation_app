class PagesController < ApplicationController
  #before_action :sign_in_required, only: [:top]  
  # ↑ これ戻すときは、application_controllerのprivateにある、sign_in_requiredメソッドも戻す
  
  def top
  end

  def profile
  end
end
