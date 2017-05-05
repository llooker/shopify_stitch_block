view: customers {
  sql_table_name: shopify_stitch.customers ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: _id {
    type: number
    sql: ${TABLE}._id ;;
  }

  dimension_group: _sdc_batched {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}._sdc_batched_at ;;
  }

  dimension_group: _sdc_received {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}._sdc_received_at ;;
  }

  dimension: _sdc_sequence {
    type: number
    sql: ${TABLE}._sdc_sequence ;;
  }

  dimension: _sdc_table_version {
    type: number
    sql: ${TABLE}._sdc_table_version ;;
  }

  dimension: accepts_marketing {
    type: yesno
    sql: ${TABLE}.accepts_marketing ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: default_address__address1 {
    type: string
    sql: ${TABLE}.default_address__address1 ;;
  }

  dimension: default_address__address2 {
    type: string
    sql: ${TABLE}.default_address__address2 ;;
  }

  dimension: default_address__city {
    type: string
    sql: ${TABLE}.default_address__city ;;
  }

  dimension: default_address__company {
    type: string
    sql: ${TABLE}.default_address__company ;;
  }

  dimension: default_address__country {
    type: string
    sql: ${TABLE}.default_address__country ;;
  }

  dimension: default_address__country_code {
    type: string
    sql: ${TABLE}.default_address__country_code ;;
  }

  dimension: default_address__country_name {
    type: string
    sql: ${TABLE}.default_address__country_name ;;
  }

  dimension: default_address__default {
    type: yesno
    sql: ${TABLE}.default_address__default ;;
  }

  dimension: default_address__first_name {
    type: string
    sql: ${TABLE}.default_address__first_name ;;
  }

  dimension: default_address__id {
    type: number
    sql: ${TABLE}.default_address__id ;;
  }

  dimension: default_address__last_name {
    type: string
    sql: ${TABLE}.default_address__last_name ;;
  }

  dimension: default_address__name {
    type: string
    sql: ${TABLE}.default_address__name ;;
  }

  dimension: default_address__phone {
    type: string
    sql: ${TABLE}.default_address__phone ;;
  }

  dimension: default_address__province {
    type: string
    sql: ${TABLE}.default_address__province ;;
  }

  dimension: default_address__province_code {
    type: string
    sql: ${TABLE}.default_address__province_code ;;
  }

  dimension: default_address__zip {
    type: string
    sql: ${TABLE}.default_address__zip ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: last_order_id {
    type: number
    sql: ${TABLE}.last_order_id ;;
  }

  dimension: last_order_name {
    type: string
    sql: ${TABLE}.last_order_name ;;
  }

  dimension: multipass_identifier {
    type: string
    sql: ${TABLE}.multipass_identifier ;;
  }

  dimension: note {
    type: string
    sql: ${TABLE}.note ;;
  }

  dimension: orders_count {
    type: number
    sql: ${TABLE}.orders_count ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: tax_exempt {
    type: yesno
    sql: ${TABLE}.tax_exempt ;;
  }

  dimension: total_spent {
    type: number
    sql: ${TABLE}.total_spent ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.updated_at ;;
  }

  dimension: verified_email {
    type: yesno
    sql: ${TABLE}.verified_email ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      default_address__country_name,
      default_address__first_name,
      default_address__last_name,
      default_address__name,
      first_name,
      last_name,
      last_order_name
    ]
  }
}
