view: locations {
  sql_table_name: "DATAMARTS"."LOCATIONS" ;;
  drill_fields: [location_id]

  dimension: location_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."LOCATION_ID" ;;
  }
  dimension: company_id {
    type: number
    sql: ${TABLE}."COMPANY_ID" ;;
  }
  dimension: has_department_based_budget {
    type: yesno
    sql: ${TABLE}."HAS_DEPARTMENT_BASED_BUDGET" ;;
  }
  dimension: location_address {
    type: string
    sql: ${TABLE}."LOCATION_ADDRESS" ;;
  }
  dimension: location_city {
    type: string
    sql: ${TABLE}."LOCATION_CITY" ;;
  }
  dimension: location_country {
    type: string
    sql: ${TABLE}."LOCATION_COUNTRY" ;;
  }
  dimension_group: location_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."LOCATION_CREATED_AT" ;;
  }
  dimension_group: location_deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."LOCATION_DELETED_AT" ;;
  }
  dimension: location_name {
    type: string
    sql: ${TABLE}."LOCATION_NAME" ;;
  }
  dimension: location_state {
    type: string
    sql: ${TABLE}."LOCATION_STATE" ;;
  }
  dimension: location_status {
    type: string
    sql: ${TABLE}."LOCATION_STATUS" ;;
  }
  measure: count {
    type: count
    drill_fields: [location_id, location_name, schedules.count, shifts.count]
  }
}
