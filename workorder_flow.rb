level_1_category_placeholder = ''
level_2_category_placeholder = ''
level_3_category_placeholder = ''
level_4_category_placeholder = ''

case level_1_category_placeholder
when 'Hot Water','Water or Leaks'
    return 'plumbing'
when 'Roof'
    return 'roofing'
when 'Air Conditioning'
    return 'heating-air-conditioning'

when 'Alarm-Smoke Detector'
    return 'alarm-systems'

when 'Bathroom and Toilet'
    case level_2_category_placeholder
    when 'Basin'
        case level_3_category_placeholder
        when 'Pipe leaking', 'Between basin and wall'
            return 'plumbing'
        when 'Tap','Plug and chain','Tiles'
            return 'bathroom-kitchen-fixtures-accessories'
        when 'Other'
            return '?'
        else
            case level_4_category_placeholder
            when 'Basin blocked'
                return 'plumbing'
            else
                return 'bathroom-kitchen-fixtures-accessories'
            end
        end
    when 'Bath'
        case level_3_category_placeholder
        when 'Between bath and wall'
            case level_4_category_placeholder
            when 'Sealant discoloured or mouldy'
                return 'bathroom-kitchen-fixtures-accessories'
            when 'else'
                return 'plumbing'
            end
        when 'Pipes'
            return 'plumbing'
        else
            return 'bathroom-kitchen-fixtures-accessories'
        end
    when 'Shower'
        case level_3_category_placeholder
        when 'No water', 'Waste pipe'
            return 'plumbing'
        else
            return 'bathroom-kitchen-fixtures-accessories'
        end
    when 'WC/toilet'
        case level_3_category_placeholder
        when 'Pipes'
            return 'plumbing'
        when 'Toilet pan'
            return 'bathroom-kitchen-fixtures-accessories'
        when 'Macerator'
            return 'plumbing'
        when 'Cistern'
            case level_4_category_placeholder
            when 'Cistern needs to be refixed to wall','Cracked - high level cistern','Cracked - lower level cistern'
                return 'bathroom-kitchen-fixtures-accessories'
            when 'Other'
                return '?'
            else
                return 'plumbing'
            end
        when 'Other'
            return '?'
        end
    when 'Electric shower'
        return '?'
    when 'Other'
        return '?'
    end
        
when 'Door Garages/Locks'
    case level_2_category_placeholder
    when 'Locks, Keys or Remotes'
        return 'locks-locksmiths'
    else 
        return 'garage-doors-hardware'
    end
when 'Electricity'
    return 'electricians'
when 'Exterior or Garden'
    return 'garden-maintenance'
when 'Furniture'
    return 'furniture-refinish-repair'
when 'Heating'
    return 'heating-air-conditioning'
when 'Floor/Wall/Ceiling'
    return 'floor-laying-refinishing'
when 'Kitchen'
    case level_2_category_placeholder
    when 'Applicances'
        return 'appliance-repair'
    when 'Tiles', 'Extractor fan'
        return 'bathroom-kitchen-fixtures-accessories'
    when 'Sinks and taps'
        case level_3_category_placeholder
        when 'Sink'
            case level_4_category_placeholder
            when 'Water leaking between sink and wall'
                return 'plumbing'
            when 'Other'
                return '?'
            else
                return 'bathroom-kitchen-fixtures-accessories'
            end
        when 'Leaks or blockages'
            return 'plumbing'
        when 'Other'
            return '?'
        else
            return 'bathroom-kitchen-fixtures-accessories'
        end
    when 'Countertop'
        return 'countertops'
    when 'Other'
        return '?'
    else
        return '?'
    end         
when 'Laundry'
    return 'appliance-repair'
when 'Lighting'
    return 'lighting'
when 'Pest/Vermins'
    return 'pest-animal-control'
when 'Water or Leaks'
    return 'plumbing'
when 'Windows'
    case level_2_category_placeholder
    when 'Blinds'
        return 'blinds-cleaning-repairing'
    when 'Curtains'
        return 'drapery-curtains'
    when 'Other'
        return '?'
    else
        return 'windows-doors'
    end 
when 'Audio Visual Elements'
    return 'electronic-repairs'
end





#homestars
'plumbing'
'roofing'
'heating-air-conditioning'
'alarm-systems'
'bathroom-kitchen-fixtures-accessories'
'locks-locksmiths'
'electricians'
'garden-maintenance'
'furniture'
'heating-air-conditioning'
'floor-laying-refinishing'
'appliance-repair'
'lighting'
'pest-animal-control'
'window-gutter-cleaning'
'electronic-repairs'
'garage-doors-hardware'
'furniture-refinish-repair'
'drywall-contractors'
'windows-doors'
'countertops'
'drapery-curtains'
'blinds-cleaning-repairing'



# fixflo'Hot Water'
'Roof'
'Air Conditioning'
'Alarm-Smoke Detector'
'Bathroom and Toilet'
'Shared Facilities'
'Door Garages/Locks'
'Electricity'
'Exterior or Garden'
'Furniture'
'Heating'
'Floor/Wall/Ceiling'
'Kitchen'
'Laundry'
'Lighting'
'Pest/Vermins'
'Stairs'
'Water or Leaks'
'Windows'
'Audio Visual Elements'
'Other'
