json.array!(@facilities) do |facility|
  json.extract! facility, :comm_city, :comm_state, :eeo_rpt_ind, :fac_address1, :fac_address2, :fac_callsign, :fac_channel, :fac_city, :fac_country, :fac_frequency, :fac_service, :fac_state, :fac_status_date, :fac_type, :facility_id, :lic_expiration_date, :fac_status, :fac_zip1, :fac_zip2, :station_type, :assoc_facility_id, :callsign_eff_date, :tsid_ntsc, :tsid_dtv, :digital_status, :sat_tv, :network_affil, :nielsen_dma, :tv_virtual_channel, :last_change_date
  json.url facility_url(facility, format: :json)
end
