CREATE EXTENSION IF NOT EXISTS citus;

CREATE EXTENSION IF NOT EXISTS cstore_fdw;

CREATE SERVER cstore_server;

CREATE FOREIGN TABLE customer_reviews (
    customer_id text,
    review_date date,
    review_rating integer,
    review_votes integer,
    review_helpful_votes integer,
    product_id character(10),
    product_title text,
    product_sales_rank bigint,
    product_group text,
    product_category text,
    product_subcategory text,
    similar_product_ids character(10)[]
)
SERVER cstore_server
OPTIONS (
    compression 'pglz'
);

\COPY customer_reviews FROM 'customer_reviews_1998.csv' WITH CSV;
\COPY customer_reviews FROM 'customer_reviews_1999.csv' WITH CSV;

CREATE TABLE customer_reviews_am (
  LIKE customer_reviews INCLUDING ALL
) USING columnar;

INSERT INTO customer_reviews_am SELECT * FROM customer_reviews;
