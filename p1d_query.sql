USE LibraryManagement;
CREATE TABLE books (
	book_id INT AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(120),
    publication_year YEAR,
    author_id INT,
    genre_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id),
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
)