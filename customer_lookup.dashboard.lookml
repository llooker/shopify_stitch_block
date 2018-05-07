- dashboard: customer_lookup
  title: Customer Lookup
  layout: newspaper
  elements:
  - title: User Info
    name: User Info
    model: shopify
    explore: orders
    type: looker_single_record
    fields:
    - customer_order_facts.customer_id
    - customers.email
    - customers.name
    - customers.created_month
    - customers.city
    - customers.state
    - customers.zip
    filters: {}
    sorts:
    - customers.created_month desc
    limit: 500
    show_view_names: false
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      customer_id: customer_order_facts.customer_id
    row: 0
    col: 0
    width: 8
    height: 4
  - title: Customer Shipping Location
    name: Customer Shipping Location
    model: shopify
    explore: orders
    type: looker_geo_coordinates
    fields:
    - customers.count
    - orders.shipping_location
    filters: {}
    sorts:
    - customers.count desc
    limit: 500
    query_timezone: America/New_York
    map: usa
    map_projection: ''
    show_view_names: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: positron
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    series_types: {}
    listen:
      customer_id: customer_order_facts.customer_id
    row: 0
    col: 15
    width: 9
    height: 4
  - title: New Tile
    name: New Tile
    model: shopify
    explore: orders
    type: single_value
    fields:
    - orders.count
    filters: {}
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    map: usa
    map_projection: ''
    show_view_names: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: positron
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    series_types: {}
    single_value_title: Lifetime Orders
    listen:
      customer_id: customer_order_facts.customer_id
    row: 4
    col: 8
    width: 7
    height: 3
  - title: Order Count
    name: Order Count
    model: shopify
    explore: orders
    type: single_value
    fields:
    - order_refunds.count
    filters: {}
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    map: usa
    map_projection: ''
    show_view_names: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: positron
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    series_types: {}
    single_value_title: Total Items Returned
    listen:
      customer_id: customer_order_facts.customer_id
    row: 4
    col: 0
    width: 8
    height: 3
  - title: Total Revenue
    name: Total Revenue
    model: shopify
    explore: orders
    type: single_value
    fields:
    - orders.total_order_revenue
    filters: {}
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    map: usa
    map_projection: ''
    show_view_names: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: positron
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    series_types: {}
    single_value_title: Lifetime Spend
    listen:
      customer_id: customer_order_facts.customer_id
    row: 0
    col: 8
    width: 7
    height: 4
  - title: Favorite Product Types
    name: Favorite Product Types
    model: shopify
    explore: orders
    type: looker_pie
    fields:
    - orders.count
    - products.product_type
    filters: {}
    sorts:
    - orders.count desc
    limit: 500
    query_timezone: America/New_York
    value_labels: legend
    label_type: labPer
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    map: usa
    map_projection: ''
    show_view_names: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: positron
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    series_types: {}
    single_value_title: Lifetime Spend
    listen:
      customer_id: customer_order_facts.customer_id
    row: 4
    col: 15
    width: 9
    height: 10
  - title: Item Order History
    name: Item Order History
    model: shopify
    explore: orders
    type: table
    fields:
    - orders__line_items.order_id
    - products.product_image
    - orders__line_items.name
    - orders.created_date
    - orders.customer_created_date
    - order_refunds.created_date
    filters: {}
    sorts:
    - orders.created_date desc
    limit: 500
    query_timezone: America/New_York
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    map: usa
    map_projection: ''
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    value_labels: legend
    label_type: labPer
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: positron
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    series_types: {}
    single_value_title: Lifetime Spend
    listen:
      customer_id: customer_order_facts.customer_id
    row: 7
    col: 0
    width: 15
    height: 7
  filters:
  - name: customer_id
    title: customer_id
    type: field_filter
    default_value: '2372846215'
    allow_multiple_values: true
    required: false
    model: shopify
    explore: orders
    listens_to_filters: []
    field: customer_order_facts.customer_id
