CREATE DATABASE Amazon_Reviews

-- Reviewer table
CREATE TABLE Reviewer (
    Reviewer_id INT AUTO_INCREMENT PRIMARY KEY,
    Reviewer_name VARCHAR(255)
);

-- Reviews table
CREATE TABLE Reviews (
    Review_id INT AUTO_INCREMENT PRIMARY KEY,
    Review_rating INT, 
    Review_title VARCHAR(500),
    Review_content TEXT,
    Is_verified BOOLEAN,
    Review_date DATE,
    Reviewer_id INT,
    FOREIGN KEY (Reviewer_id) REFERENCES Reviewer(Reviewer_id)
);