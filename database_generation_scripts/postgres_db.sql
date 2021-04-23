CREATE TABLE customer_reviews_n (
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
);

\COPY customer_reviews_n FROM 'customer_reviews_1998.csv' WITH CSV;
\COPY customer_reviews_n FROM 'customer_reviews_1999.csv' WITH CSV;
