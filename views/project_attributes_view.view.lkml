view: project_attributes_view {
  sql_table_name: `gcs_storage_insights_synth_data.project_attributes_view` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: insights_unique_id {
    type: string
    sql: ${TABLE}.insightsUniqueId ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: number {
    type: number
    sql: ${TABLE}.number ;;
  }
  dimension_group: snapshot {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.snapshotTime ;;
  }
  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
