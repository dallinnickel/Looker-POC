view: users {
  sql_table_name: "DATAMARTS"."USERS" ;;
  drill_fields: [user_id]

  dimension: user_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."USER_ID" ;;
  }
  dimension_group: birth {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."BIRTH_DATE" ;;
  }
  dimension: company_id {
    type: number
    sql: ${TABLE}."COMPANY_ID" ;;
  }
  dimension: default_phone {
    type: string
    sql: ${TABLE}."DEFAULT_PHONE" ;;
  }
  dimension: first_name {
    type: string
    sql: ${TABLE}."FIRST_NAME" ;;
  }
  dimension: full_name {
    type: string
    sql: ${TABLE}."FULL_NAME" ;;
  }
  dimension: home_phone {
    type: string
    sql: ${TABLE}."HOME_PHONE" ;;
  }
  dimension: identity_id {
    type: number
    sql: ${TABLE}."IDENTITY_ID" ;;
  }
  dimension_group: invite_accepted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."INVITE_ACCEPTED_AT" ;;
  }
  dimension_group: invited {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."INVITED_AT" ;;
  }
  dimension_group: last_login {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."LAST_LOGIN_AT" ;;
  }
  dimension: last_name {
    type: string
    sql: ${TABLE}."LAST_NAME" ;;
  }
  dimension: mobile_phone {
    type: string
    sql: ${TABLE}."MOBILE_PHONE" ;;
  }
  dimension: user_city {
    type: string
    sql: ${TABLE}."USER_CITY" ;;
  }
  dimension_group: user_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."USER_CREATED_AT" ;;
  }
  dimension: user_email {
    type: string
    sql: ${TABLE}."USER_EMAIL" ;;
  }
  dimension: user_type {
    type: string
    sql: ${TABLE}."USER_TYPE" ;;
  }
  measure: count {
    type: count
    drill_fields: [user_id, first_name, full_name, last_name, shifts.count]
  }
}
