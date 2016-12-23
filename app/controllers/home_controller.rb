class HomeController < ApplicationController
  def index
  end

  def import_csv
    @imported_csv = CSVManager::Import.new(params[:file])
  end

  def quick_import
    @quick_csv = CSVManager::Import.new('tmp/default.csv')
  end
end
