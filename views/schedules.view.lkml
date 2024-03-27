view: schedules {
  sql_table_name: "DATAMARTS"."SCHEDULES" ;;
  drill_fields: [schedule_id]

  dimension: schedule_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."SCHEDULE_ID" ;;
  }
  dimension: auto_scheduled {
    type: yesno
    sql: ${TABLE}."AUTO_SCHEDULED" ;;
  }
  dimension_group: auto_scheduled {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."AUTO_SCHEDULED_AT" ;;
  }
  dimension: company_id {
    type: number
    sql: ${TABLE}."COMPANY_ID" ;;
  }
  dimension: department_id {
    type: number
    sql: ${TABLE}."DEPARTMENT_ID" ;;
  }
  dimension: draft_status {
    type: yesno
    sql: ${TABLE}."DRAFT_STATUS" ;;
  }
  dimension_group: last_published {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."LAST_PUBLISHED_AT" ;;
  }
  dimension: location_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."LOCATION_ID" ;;
  }
  dimension_group: schedule_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."SCHEDULE_CREATED_AT" ;;
  }
  dimension_group: schedule_modified {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."SCHEDULE_MODIFIED_AT" ;;
  }
  dimension_group: schedule_week {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."SCHEDULE_WEEK" ;;
  }
  measure: count {
    type: count
    drill_fields: [schedule_id, locations.location_id, locations.location_name]
  }
}
