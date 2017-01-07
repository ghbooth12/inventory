class HomeController < ApplicationController
  def index
  end

  def import_csv
    @import = CSVManager::Import.new
    @import.parse(params[:file])
  end

  def import_csv_with_headers
    @import = CSVManager::Import.new
    headers = params[:headers].split(',').map(&:strip)
    @import.parse(params[:file], headers)
  end

  def quick_import
    @import = CSVManager::Import.new
    @import.parse('tmp/default.csv')
  end

  def save_all
    @import = CSVManager::Import.new
    @import.parse(params[:file])
    @import.create(Product)

    redirect_to products_path
  end

end
