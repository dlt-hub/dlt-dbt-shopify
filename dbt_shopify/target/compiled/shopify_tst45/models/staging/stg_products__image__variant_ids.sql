/* Table: products__image__variant_ids */
/* Parent: { parent }} */


-- depends_on: `dlt-dev-external`.`shopify_data_tst45_transformed`.`dlt_active_load_ids`
-- depends_on: `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_products`

SELECT
/* select which columns will be available for table 'products__image__variant_ids' */
    value,
    _dlt_root_id,
    _dlt_parent_id,
    _dlt_list_idx,
    _dlt_id,
FROM `dlt-dev-external`.`shopify_data_tst45`.`products__image__variant_ids`

/* we only load table items if the parent table has the parent item */
WHERE _dlt_parent_id IN ( SELECT _dlt_id FROM `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_products` )