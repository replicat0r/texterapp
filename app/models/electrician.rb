class Electrician < ActiveRecord::Base

    def self.import(file)
        # xlsx = Roo::Excelx.new("./homestars_data.xlsx")
        xlsx = Roo::Excelx.new(file.path)
        listings = {}
        # xlsx.sheets.each do |sheet|

            spreadsheet = xlsx.sheet('electricians')
            header = spreadsheet.row(2)
            # listings[sheet] = []
            (3..spreadsheet.last_row).each do |i|
                row = Hash[[header, spreadsheet.row(i)].transpose]
                puts row[:liability]
                # listings[sheet] << row
                electrician = new
                electrician.attributes = row.to_hash.slice(*electrician.attribute_names())
                electrician.save!
            end
        # end
    end
end
