class HomeController < ApplicationController
  def index
  end

  def import_csv
    @importer = CSVManager::Import.new
    header = params[:headers].split(',').map(&:strip)
    @importer.parse(params[:file], header)
  end

  def quick_import
    @importer = CSVManager::Import.new
    @importer.parse('tmp/default.csv')
  end

  def save_all
    @importer = CSVManager::Import.new
    @importer.parse(params[:file])
    @importer.create(Product)

    redirect_to products_path
  end

end
