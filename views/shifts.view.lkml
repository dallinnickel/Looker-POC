view: shifts {
  sql_table_name: "DATAMARTS"."SHIFTS" ;;
  drill_fields: [shift_id]

  dimension: shift_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."SHIFT_ID" ;;
  }
  dimension: department_id {
    type: number
    sql: ${TABLE}."DEPARTMENT_ID" ;;
  }
  dimension_group: first_published {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."FIRST_PUBLISHED_AT" ;;
  }
  dimension: is_closing {
    type: yesno
    sql: ${TABLE}."IS_CLOSING" ;;
  }
  dimension: is_cut_early {
    type: yesno
    sql: ${TABLE}."IS_CUT_EARLY" ;;
  }
  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}."IS_DELETED" ;;
  }
  dimension: is_draft {
    type: yesno
    sql: ${TABLE}."IS_DRAFT" ;;
  }
  dimension: is_open {
    type: yesno
    sql: ${TABLE}."IS_OPEN" ;;
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
  dimension: minutes_late {
    type: number
    sql: ${TABLE}."MINUTES_LATE" ;;
  }
  dimension: notes {
    type: string
    sql: ${TABLE}."NOTES" ;;
  }
  dimension: open_offer_type {
    type: yesno
    sql: ${TABLE}."OPEN_OFFER_TYPE" ;;
  }
  dimension: role_id {
    type: number
    sql: ${TABLE}."ROLE_ID" ;;
  }
  dimension_group: shift_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."SHIFT_CREATED_AT" ;;
  }
  dimension_group: shift_ended {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."SHIFT_ENDED_AT" ;;
  }
  dimension_group: shift_modified {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."SHIFT_MODIFIED_AT" ;;
  }
  dimension_group: shift_started {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."SHIFT_STARTED_AT" ;;
  }
  dimension: shift_status {
    type: number
    sql: ${TABLE}."SHIFT_STATUS" ;;
  }
  dimension: station {
    type: number
    sql: ${TABLE}."STATION" ;;
  }
  dimension: unassigned {
    type: yesno
    sql: ${TABLE}."UNASSIGNED" ;;
  }
  dimension: unassigned_skill_level {
    type: number
    sql: ${TABLE}."UNASSIGNED_SKILL_LEVEL" ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."USER_ID" ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	shift_id,
	locations.location_id,
	locations.location_name,
	users.first_name,
	users.full_name,
	users.last_name,
	users.user_id
	]
  }

}
