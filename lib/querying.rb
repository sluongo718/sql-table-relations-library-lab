def select_books_titles_and_years_in_first_series_order_by_year
  "Write your SQL query here"
  "SELECT books.title, books.year
  FROM books WHERE series_id = 1
  ORDER BY year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "Write your SQL query here"
  "SELECT characters.name, characters.motto
  FROM characters
  order by characters.motto asc
  limit 1;"
end


def select_value_and_count_of_most_prolific_species
  "Write your SQL query here"
  "SELECT characters.species, COUNT(*) AS prolific_species
  FROM characters
  GROUP BY characters.species
  ORDER BY prolific_species DESC
  LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "Write your SQL query here"
  "SELECT authors.name, subgenres.name
  FROM authors JOIN subgenres
  ON authors.id = subgenres.id;"
end

def select_series_title_with_most_human_characters
  "Write your SQL query here"
  "SELECT series.title AS ct
   FROM series
   ORDER BY ct
   LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "Write your SQL query here"
  "SELECT characters.name, COUNT(*) as b_c
  FROM character_books
  JOIN characters
  ON character_books.character_id = characters.id
  GROUP BY characters.name
  ORDER BY b_c DESC, characters.name;"
end
