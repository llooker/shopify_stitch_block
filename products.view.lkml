view: products {
  sql_table_name: shopify.products ;;

  dimension: image__product_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.image__product_id ;;
  }

  dimension: _id {
    hidden: yes
    type: number
    sql: ${TABLE}._id ;;
  }



  dimension: body_html {
    type: string
    sql: ${TABLE}.body_html ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: handle {
    type: string
    sql: ${TABLE}.handle ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }



  dimension: image__id {
    type: number
    sql: ${TABLE}.image__id ;;
  }

  dimension: image__position {
    type: number
    sql: ${TABLE}.image__position ;;
  }

  dimension: image__src {
    type: string
    sql: ${TABLE}.image__src ;;
  }


  dimension: product_image {
    type: number
    sql: 1 ;;
    html:<img src="{{image__src._value}}" width="100" height="100">;;
     link: {
       label: "Full size image"
       url: "{{image__src._value}}"
       icon_url: "http://www.studioartease.com/wp-content/uploads/2015/10/montreal-tattoo-parlor-favicon-114.png"       }
  }

    dimension: product_type {
    type: string
    sql: ${TABLE}.product_type ;;
  }

  dimension_group: published {
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
    sql: ${TABLE}.published_at ;;
  }

  dimension: published_scope {
    type: string
    sql: ${TABLE}.published_scope ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: template_suffix {
    type: string
    sql: ${TABLE}.template_suffix ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
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

  dimension: vendor {
    type: string
    sql: ${TABLE}.vendor ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      image__product_id,
      checkouts__line_items.count,
      collects.count,
      orders__fulfillments__line_items.count,
      orders__line_items.count,
      products__images.count,
      products__options.count,
      products__variants.count
    ]
  }
}