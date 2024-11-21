view: object_attributes_view {
  sql_table_name: `gcs_storage_insights_synth_data.object_attributes_view` ;;

  dimension: bucket {
    type: string
    sql: ${TABLE}.bucket ;;
  }
  dimension: component_count {
    type: number
    sql: ${TABLE}.componentCount ;;
  }
  dimension: content_disposition {
    type: string
    sql: ${TABLE}.contentDisposition ;;
  }
  dimension: content_encoding {
    type: string
    sql: ${TABLE}.contentEncoding ;;
  }
  dimension: content_language {
    type: string
    sql: ${TABLE}.contentLanguage ;;
  }
  dimension: content_type {
    type: string
    sql: ${TABLE}.contentType ;;
  }
  dimension: crc32c {
    type: number
    sql: ${TABLE}.crc32c ;;
  }
  dimension_group: custom {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.customTime ;;
  }
  dimension: etag {
    type: string
    sql: ${TABLE}.etag ;;
  }
  dimension: event_based_hold {
    type: yesno
    sql: ${TABLE}.eventBasedHold ;;
  }
  dimension: generation {
    type: number
    sql: ${TABLE}.generation ;;
  }
  dimension_group: hard_delete {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.hardDeleteTime ;;
  }
  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }
  dimension: md5_hash {
    type: string
    sql: ${TABLE}.md5Hash ;;
  }
  dimension: media_link {
    type: string
    sql: ${TABLE}.mediaLink ;;
  }
  dimension: metadata {
    hidden: yes
    sql: ${TABLE}.metadata ;;
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
    type: number
    sql: ${TABLE}.project ;;
  }
  dimension_group: retention_expiration {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.retentionExpirationTime ;;
  }
  dimension: self_link {
    type: string
    sql: ${TABLE}.selfLink ;;
  }
  dimension: size {
    type: number
    sql: ${TABLE}.size ;;
  }
  dimension_group: snapshot {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.snapshotTime ;;
  }
  dimension_group: soft_delete {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.softDeleteTime ;;
  }
  dimension: storage_class {
    type: string
    sql: ${TABLE}.storageClass ;;
  }
  dimension: temporary_hold {
    type: yesno
    sql: ${TABLE}.temporaryHold ;;
  }
  dimension_group: time_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.timeCreated ;;
  }
  dimension_group: time_deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.timeDeleted ;;
  }
  dimension_group: time_storage_class_updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.timeStorageClassUpdated ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}

view: object_attributes_view__metadata {

  dimension: key {
    type: string
    sql: key ;;
  }
  dimension: object_attributes_view__metadata {
    type: string
    hidden: yes
    sql: object_attributes_view__metadata ;;
  }
  dimension: value {
    type: string
    sql: value ;;
  }
}
