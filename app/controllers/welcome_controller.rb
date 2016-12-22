class WelcomeController < ApplicationController
  def index
    @msg = CSVManager::Testing.new.test
  end
end
