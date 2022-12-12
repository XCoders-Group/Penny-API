CREATE TABLE users (
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  username TEXT NOT NULL UNIQUE,
  password TEXT NOT NULL
);

CREATE TABLE limits (
  user_id INTEGER NOT NULL PRIMARY KEY,
  amazon money 0.00,
  bestbuy money 0.00,
  ebay money 0.00,
  CONSTRAINT fk_user
    FOREIGN KEY(user_id)
  REFERENCES users(id)
);

CREATE TABLE summary (
  user_id INTEGER NOT NULL PRIMARY KEY,
  amazon money 0.00,
  bestbuy money 0.00,
  ebay money 0.00,
  CONSTRAINT fk_user
    FOREIGN KEY(user_id)
  REFERENCES users(id)
);
