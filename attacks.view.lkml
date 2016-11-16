view: attacks {
  sql_table_name: public.attacks ;;

  dimension: activity {
    type: string
    sql: ${TABLE}.activity ;;
    drill_fields: [age, species, date, fatal]
  }

  dimension: age {
    type: string
    sql: ${TABLE}.age ;;
  }

  dimension: area {
    type: string
    sql: ${TABLE}.area ;;
  }

  dimension: case_number {
    type: string
    sql: ${TABLE}.case_number ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: fatal {
    type: string
    sql: ${TABLE}.fatal ;;
  }

  dimension: injury {
    type: string
    sql: ${TABLE}.injury ;;
  }

  dimension: location_og {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: sex {
    type: string
    sql: ${TABLE}.sex ;;
  }

  dimension: species {
    type: string
    sql: ${TABLE}.species ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}.time ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  dimension: latitude {
    type: number
    value_format_name: id
    sql: CASE WHEN ${location_og} = 'New Smyrna Beach Volusia County' THEN 29.0258
      WHEN ${location_og} = 'Daytona Beach Volusia County' THEN 29.2108
      WHEN ${location_og} = 'Myrtle Beach Horry County' THEN 33.6891
      WHEN ${location_og} = 'Ponce Inlet Volusia County' THEN  29.0964
      WHEN ${location_og} = 'Melbourne Beach Brevard County' THEN 28.0683
      WHEN ${location_og} = 'Durban' THEN -29.8587
      WHEN ${location_og} = 'Isle of Palms Charleston County' THEN 32.8194
      WHEN ${location_og} = 'Boa Viagem Recife' THEN -8.0539
      WHEN ${location_og} = 'Cocoa Beach Brevard County' THEN 28.3200
      ELSE NULL
      END
       ;;
  }

  dimension: longitude {
    type: number
    value_format_name: id
    sql: CASE WHEN ${location_og} = 'New Smyrna Beach Volusia County' THEN -80.9270
      WHEN ${location_og} = 'Daytona Beach Volusia County' THEN -81.0228
      WHEN ${location_og} = 'Myrtle Beach Horry County' THEN -78.8867
      WHEN ${location_og} = 'Ponce Inlet Volusia County' THEN -80.9370
      WHEN ${location_og} = 'Melbourne Beach Brevard County' THEN -80.5603
      WHEN ${location_og} = 'Durban' THEN 31.0218
      WHEN ${location_og} = 'Isle of Palms Charleston County' THEN -79.7344
      WHEN ${location_og} = 'Boa Viagem Recife' THEN -34.8808
      WHEN ${location_og} = 'Cocoa Beach Brevard County' THEN -80.6076
      ELSE NULL
      END
       ;;
  }

  dimension: location {
    type: location
    sql_latitude: ${latitude} ;;
    sql_longitude: ${longitude} ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
