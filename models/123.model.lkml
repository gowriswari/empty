connection: "gcs-storage-insights"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: 123_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: 123_default_datagroup

explore: object_attributes_view {
    join: object_attributes_view__metadata {
      view_label: "Object Attributes View: Metadata"
      sql: LEFT JOIN UNNEST(${object_attributes_view.metadata}) as object_attributes_view__metadata ;;
      relationship: one_to_many
    }
}

explore: bucket_attributes_view {
    join: bucket_attributes_view__labels {
      view_label: "Bucket Attributes View: Labels"
      sql: LEFT JOIN UNNEST(${bucket_attributes_view.labels}) as bucket_attributes_view__labels ;;
      relationship: one_to_many
    }
    join: bucket_attributes_view__tags__tag_map {
      view_label: "Bucket Attributes View: Tags Tagmap"
      sql: LEFT JOIN UNNEST(${bucket_attributes_view.tags__tag_map}) as bucket_attributes_view__tags__tag_map ;;
      relationship: one_to_many
    }
}

explore: error_attributes_view {}

explore: events_view {}

explore: project_attributes_view {}

