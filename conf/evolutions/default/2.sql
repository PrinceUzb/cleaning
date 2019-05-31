# --- !Ups
CREATE TABLE "Counts" (
  "id" SERIAL NOT NULL PRIMARY KEY,
  "name" VARCHAR NOT NULL
);

CREATE TABLE "Price_list" (
  "id" SERIAL NOT NULL PRIMARY KEY,
  "name" VARCHAR NOT NULL,
  "count" INTEGER CONSTRAINT  "Price_listFkCountId" REFERENCES  "Counts" ("id") ON UPDATE CASCADE ON DELETE CASCADE,
  "price" VARCHAR NOT NULL
);


CREATE TABLE "Orders" (
  "id" SERIAL NOT NULL PRIMARY KEY,
  "surname" VARCHAR NOT NULL,
  "firstName" VARCHAR NOT NULL,
  "phone" VARCHAR NOT NULL,
  "address" VARCHAR NOT NULL,
  "orderDay" TIMESTAMP NOT NULL,
  "email" VARCHAR NOT NULL,
  "comment" TEXT NULL,
  "type" INTEGER CONSTRAINT "OrdersFkPrice_listId" REFERENCES "Price_list" ("id") ON update CASCADE ON DELETE CASCADE,
  "price" INTEGER CONSTRAINT  "pricesFkPrice_listId" REFERENCES  "Price_list"("id") ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO "Counts" ("name") VALUES ('1 sht');
INSERT INTO "Counts" ("name") VALUES ('2 sht');



# --- !Downs
DROP TABLE "Price_list";
DROP TABLE "Count";
DROP TABLE "Orders";