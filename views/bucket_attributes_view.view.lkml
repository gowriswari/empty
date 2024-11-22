view: bucket_attributes_view {
  sql_table_name: `gcs_storage_insights_synth_data.bucket_attributes_view` ;;

  dimension: autoclass__enabled {
    type: yesno
    sql: ${TABLE}.autoclass.enabled ;;
    group_label: "Autoclass"
    group_item_label: "Enabled"
  }
  dimension_group: autoclass__toggle {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.autoclass.toggleTime ;;
  }
  dimension: labels {
   hidden: yes
    sql: ${TABLE}.labels ;;
  }
  dimension: lifecycle {
    type: yesno
    sql: ${TABLE}.lifecycle ;;
    #hidden: yes
  }
  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
    #hidden: yes
  }
  dimension: metageneration {
    type: number
    sql: ${TABLE}.metageneration ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: project {
    type: string
    sql: ${TABLE}.project ;;
  }
  dimension: public__bucket_policy_only {
    type: yesno
    sql: ${TABLE}.public.bucketPolicyOnly ;;
    group_label: "Public"
    group_item_label: "Bucket Policy Only"
  }
  dimension: public__public_access_prevention {
    type: string
    sql: ${TABLE}.public.publicAccessPrevention ;;
    group_label: "Public"
    group_item_label: "Public Access Prevention"
  }
  dimension_group: snapshot {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.snapshotTime ;;
  }
  dimension_group: soft_delete_policy__effective {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.softDeletePolicy.effectiveTime ;;
  }
  dimension: soft_delete_policy__retention_duration_seconds {
    type: number
    sql: ${TABLE}.softDeletePolicy.retentionDurationSeconds ;;
    group_label: "Soft Delete Policy"
    group_item_label: "Retention Duration Seconds"
  }
  dimension: storage_class {
    type: string
    sql: ${TABLE}.storageClass ;;
  }
  dimension_group: tags__last_updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.tags.lastUpdatedTime ;;
  }
  dimension: tags__tag_map {
    hidden: yes
    sql: ${TABLE}.tags.tagMap ;;
    group_label: "Tags"
    group_item_label: "Tag Map"
  }
  dimension_group: time_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.timeCreated ;;
  }
  dimension: versioning {
    type: yesno
    sql: ${TABLE}.versioning ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}

view: bucket_attributes_view__labels {

  dimension: bucket_attributes_view__labels {
    type: string
    hidden: yes
    sql: bucket_attributes_view__labels ;;
  }
  dimension: key {
    type: string
    sql: key ;;
  }
  dimension: value {
    type: string
    sql: value ;;
  }
}

view: bucket_attributes_view__tags__tag_map {

  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}
