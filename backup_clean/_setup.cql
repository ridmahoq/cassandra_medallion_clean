Use HELP for help.
token@cqlsh> CREATE TABLE medallion.bronze_sales (
   ...     order_id bigint PRIMARY KEY,
   ...     region text,
   ...     country text,
   ...     item_type text,
   ...     sales_channel text,
   ...     order_priority text,
   ...     order_date text,
   ...     ship_date text,
   ...     units_sold int,
   ...     unit_price decimal,
   ...     unit_cost decimal,
   ...     total_revenue decimal,
   ...     total_cost decimal,
   ...     total_profit decimal
   ... );
token@cqlsh> -- Silver table (cleaned)
token@cqlsh> CREATE TABLE medallion.silver_sales (
   ...     order_id bigint PRIMARY KEY,
   ...     region text,
   ...     country text,
   ...     item_type text,
   ...     sales_channel text,
   ...     order_priority text,
   ...     order_date date,
   ...     ship_date date,
   ...     units_sold int,
   ...     unit_price decimal,
   ...     unit_cost decimal,
   ...     profit_ratio decimal,
   ...     delivery_days int
   ... );
token@cqlsh>
token@cqlsh> -- Gold tables
token@cqlsh> CREATE TABLE medallion.gold_regional_profits (
   ...     region text,
   ...     item_type text,
   ...     total_profit decimal,
   ...     avg_profit_ratio decimal,
   ...     total_units_sold int,
   ...     PRIMARY KEY ((region), item_type)
   ... );
token@cqlsh> CREATE TABLE medallion.gold_channel_performance (
   ...     sales_channel text PRIMARY KEY,
   ...     avg_delivery_days decimal,
   ...     total_revenue decimal,
   ...     order_count int
   ... );
token@cqlsh> CREATE TABLE medallion.gold_top_products (
   ...     item_type text PRIMARY KEY,
   ...     avg_profit_per_unit decimal,
   ...     total_volume int,
   ...     region_count int
   ... );
token@cqlsh>