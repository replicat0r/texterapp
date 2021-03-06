class Electrician < ActiveRecord::Base

    def self.import(file)
        # xlsx = Roo::Excelx.new("./homestars_data.xlsx")
        xlsx = Roo::Excelx.new(file.path)
        listings = {}
        # xlsx.sheets.each do |sheet|

            spreadsheet = xlsx.sheet('Sheet1')
            header = spreadsheet.row(1)
            # listings[sheet] = []
            (2..spreadsheet.last_row).each do |i|
                row = Hash[[header, spreadsheet.row(i)].transpose]
                
                # listings[sheet] << row
                electrician = new
                electrician.attributes = row.to_hash.slice(*electrician.attribute_names())
                electrician.save!
            end
        # end
    end
end
