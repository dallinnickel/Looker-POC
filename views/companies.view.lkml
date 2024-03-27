view: companies {
  sql_table_name: "DATAMARTS"."COMPANIES" ;;
  drill_fields: [company_id]

  dimension: company_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."COMPANY_ID" ;;
  }
  dimension: company_country {
    type: string
    sql: ${TABLE}."COMPANY_COUNTRY" ;;
  }
  dimension_group: company_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."COMPANY_CREATED_AT" ;;
  }
  dimension_group: company_deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."COMPANY_DELETED_AT" ;;
  }
  dimension: company_name {
    type: string
    sql: ${TABLE}."COMPANY_NAME" ;;
  }
  dimension: company_plan {
    type: string
    sql: ${TABLE}."COMPANY_PLAN" ;;
  }
  dimension: company_status {
    type: string
    sql: ${TABLE}."COMPANY_STATUS" ;;
  }
  dimension: is_clover_account {
    type: yesno
    sql: ${TABLE}."IS_CLOVER_ACCOUNT" ;;
  }
  dimension: is_created_on_mobile {
    type: yesno
    sql: ${TABLE}."IS_CREATED_ON_MOBILE" ;;
  }
  dimension: is_multi_location_billing {
    type: yesno
    sql: ${TABLE}."IS_MULTI_LOCATION_BILLING" ;;
  }
  dimension: owner_group_name {
    type: string
    sql: ${TABLE}."OWNER_GROUP_NAME" ;;
  }
  dimension: stated_pos {
    type: string
    sql: ${TABLE}."STATED_POS" ;;
  }
  measure: count {
    type: count
    drill_fields: [company_id, company_name, owner_group_name]
  }
}
