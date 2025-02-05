-- 1. вибрати всі стовпчики (За допомогою wildcard “*”) з таблиці products;
SELECT *
FROM `mydb`.`products`;

-- 1. вибрати тільки стовпчики name, phone з таблиці shippers:
SELECT `shippers`.`name`,
    `shippers`.`phone`
FROM `mydb`.`shippers`;

-- 2. середнє, максимальне та мінімальне значення стовпчика price таблички products:

SELECT AVG(`products`.`price`) as average_price
FROM `mydb`.`products`;

SELECT MAX(`products`.`price`) as max_price
FROM `mydb`.`products`;

SELECT MIN(`products`.`price`) as min_price
FROM `mydb`.`products`;


-- 3. обрати унікальні значення колонок category_id та price таблиці products, порядок виведення на екран за спаданням значення price та виберіть тільки 10 рядків.

SELECT DISTINCT `products`.`category_id`, `products`.`price`
FROM `mydb`.`products`
ORDER BY `products`.`price` DESC
LIMIT 10;

-- 4. знайти кількість продуктів (рядків), які знаходиться в цінових межах від 20 до 100.

SELECT COUNT(`products`.`id`) as product_under_100
FROM `mydb`.`products`
WHERE `products`.`price` BETWEEN 20 AND 100

-- 5. знайти кількість продуктів (рядків) та середню ціну (price) у кожного постачальника (supplier_id).

SELECT `products`.`supplier_id`, COUNT(`products`.`id`) as product_quantity, AVG(`products`.`price`) as avg_price
FROM `mydb`.`products`
GROUP BY `products`.`supplier_id`
