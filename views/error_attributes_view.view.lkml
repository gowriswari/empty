view: error_attributes_view {
  sql_table_name: `gcs_storage_insights_synth_data.error_attributes_view` ;;

  dimension: bucket_error_record__bucket_name {
    type: string
    sql: ${TABLE}.bucketErrorRecord.bucketName ;;
    group_label: "Bucket Error Record"
    group_item_label: "Bucket Name"
  }
  dimension: bucket_error_record__service_account {
    type: string
    sql: ${TABLE}.bucketErrorRecord.serviceAccount ;;
    group_label: "Bucket Error Record"
    group_item_label: "Service Account"
  }
  dimension: error_code {
    type: number
    sql: ${TABLE}.errorCode ;;
  }
  dimension: error_source {
    type: string
    sql: ${TABLE}.errorSource ;;
  }
  dimension_group: error {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.errorTime ;;
  }
  dimension: project_error_record__organization_name {
    type: string
    sql: ${TABLE}.projectErrorRecord.organizationName ;;
    group_label: "Project Error Record"
    group_item_label: "Organization Name"
  }
  dimension: project_error_record__project_number {
    type: number
    sql: ${TABLE}.projectErrorRecord.projectNumber ;;
    group_label: "Project Error Record"
    group_item_label: "Project Number"
  }
  dimension: source_gcs_location {
    type: string
    sql: ${TABLE}.sourceGcsLocation ;;
  }
  measure: count {
    type: count
    drill_fields: [bucket_error_record__bucket_name, project_error_record__organization_name]
  }
}
