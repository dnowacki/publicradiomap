class LinkFacilitiesToBroadcasters < ActiveRecord::Migration
  def change
    execute %Q{
      update broadcasters
      set facility_id = facilities.id
      from facilities
      where fac_callsign=callsign;
      
      update broadcasters
      set facility_id = facilities.id
      from facilities
      where broadcasters.facility_id is null and
        (fac_callsign = callsign||'-'||band or callsign = fac_callsign||'-'||fac_service);
    }
    
    # publicradiomap=# update broadcasters set facility_id = (select max(id) from facilities where fac_callsign=callsign) where contour is null and band <> 'AM';
  end
end
