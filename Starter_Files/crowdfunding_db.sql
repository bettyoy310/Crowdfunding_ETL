CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(255)
);

CREATE TABLE category (
    category_id VARCHAR(10) PRIMARY KEY,
    category VARCHAR(50)
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR(10) PRIMARY KEY,
    subcategory VARCHAR(50)
);

CREATE TABLE campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT REFERENCES contacts(contact_id),
    company_name VARCHAR(100),
    description TEXT,
    goal FLOAT,
    pledged FLOAT,
	outcome VARCHAR(20),
    backers_count INT,
    country VARCHAR(5),
    currency VARCHAR(5),
    launch_date TIMESTAMP,
    end_date TIMESTAMP,
    category_id VARCHAR(10) REFERENCES category(category_id),
    subcategory_id VARCHAR(10) REFERENCES subcategory(subcategory_id)
);

SELECT * FROM campaign LIMIT 10;
SELECT * FROM contacts LIMIT 10;
SELECT * FROM category LIMIT 10;
SELECT * FROM subcategory LIMIT 10;