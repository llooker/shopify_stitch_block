connection: "shopify_data"

# include all the views #
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: orders {

    join: order_refunds {
      sql_on: ${orders.id}=${order_refunds.order_id} ;;
      type: left_outer
      relationship: one_to_one
    }
    join:  orders__line_items {
      sql_on: ${orders.id}=${orders__line_items.order_id} ;;
      type: left_outer
      relationship: one_to_many
    }
    join: products {
      sql_on: ${orders__line_items.product_id} = ${products._id};;
      relationship: one_to_one
    }
    join: customers {
      sql_on: ${customers.id} = ${orders.customer_id} ;;
      type: left_outer
      relationship: many_to_one
    }

    join: customer_order_facts {
      view_label: "Customers"
      sql_on: ${customers._id} = ${customer_order_facts.customer_id} ;;
      type: left_outer
      relationship: many_to_one
    }


}

# explore:  checkouts {
# }
# explore:  transactions {
# }
# explore:  products {
# }

#Large Dollars Amount format
named_value_format: largeamount {
  value_format: "[>=1000000]$0.00,,\"M\";[>=1000]$0.00,\"K\";$0.00"
}
