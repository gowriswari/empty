view: events_view {
  sql_table_name: `gcs_storage_insights_synth_data.events_view` ;;

  dimension: event_code {
    type: number
    sql: ${TABLE}.eventCode ;;
  }
  dimension_group: event {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.eventTime ;;
  }
  dimension: manifest__location {
    type: string
    sql: ${TABLE}.manifest.location ;;
    group_label: "Manifest"
    group_item_label: "Location"
  }
  dimension_group: manifest__snapshot {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.manifest.snapshotTime ;;
  }
  dimension: manifest__view_name {
    type: string
    sql: ${TABLE}.manifest.viewName ;;
    group_label: "Manifest"
    group_item_label: "View Name"
  }
  measure: count {
    type: count
    drill_fields: [manifest__view_name]
  }
}
