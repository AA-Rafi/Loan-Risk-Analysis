CREATE TABLE personal_info (
    id FLOAT PRIMARY KEY,
    member_id FLOAT,
    emp_title VARCHAR(255),
    emp_length VARCHAR(50),
    home_ownership VARCHAR(50),
    annual_inc FLOAT,
    addr_state CHAR(2),
    zip_code VARCHAR(10)
);

INSERT INTO personal_info (id, member_id, emp_title, emp_length, home_ownership, annual_inc, addr_state, zip_code)
SELECT id, member_id, emp_title, emp_length, home_ownership, annual_inc, addr_state, zip_code
FROM base_accepted_loans;

CREATE TABLE loan_details (
    id FLOAT PRIMARY KEY,     
    funded_amnt FLOAT,
    funded_amnt_inv FLOAT,
    term VARCHAR(20),
    int_rate FLOAT,
    installment FLOAT,
    grade VARCHAR(5),
    sub_grade VARCHAR(5),
    issue_d VARCHAR(255),
	home_ownership VARCHAR(255)
    loan_status VARCHAR(50),
    purpose VARCHAR(255),
    title VARCHAR(255),
    url TEXT,
    description TEXT
);

INSERT INTO loan_details (id, loan_amnt, funded_amnt, funded_amnt_inv, term, int_rate, installment, grade, sub_grade, issue_d, loan_status, purpose, title, url, description)
SELECT id, loan_amnt, funded_amnt, funded_amnt_inv, term, int_rate, installment, grade, sub_grade, issue_d, loan_status, purpose, title, url, description
FROM base_accepted_loans;

CREATE TABLE Financial_Metrics (
    id INT PRIMARY KEY,
    dti FLOAT,
    revol_bal FLOAT,
    total_rev_hi_lim INT,
    recoveries FLOAT,
    collection_recovery_fee FLOAT
);

INSERT INTO financial_metrics (id, dti, revol_bal, total_rev_hi_lim, recoveries, collection_recovery_fee)
SELECT id, dti, revol_bal, total_rev_hi_lim, recoveries, collection_recovery_fee
FROM base_accepted_loans;

CREATE TABLE delinquency_hardship (
    id INT PRIMARY KEY,
    hardship_flag CHAR(1),
    delinq_amnt INT,
    delinq_2yrs INT,
    total_acc INT
);

INSERT INTO delinquency_hardship (id, hardship_flag, delinq_amnt, delinq_2yrs, total_acc)
SELECT id, hardship_flag, delinq_amnt, delinq_2yrs, total_acc
FROM base_accepted_loans;