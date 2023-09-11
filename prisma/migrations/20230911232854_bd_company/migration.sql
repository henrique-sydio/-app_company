-- Tabela de grupo de produtos (group)
CREATE TABLE "group" (
    "id" INT PRIMARY KEY,
    "group_type" VARCHAR(10) NOT NULL,
    "group_name" VARCHAR(255) NOT NULL
);

-- Tabela de armazém (storage)
CREATE TABLE "storage" (
    "id" INT PRIMARY KEY,
    "storage_code" VARCHAR(10) NOT NULL,
    "storage_name" VARCHAR(255) NOT NULL
);

-- Tabela de produtos (products)
CREATE TABLE "products" (
    "id" INT PRIMARY KEY,
    "product_name" VARCHAR(255) NOT NULL,
    "product_type" VARCHAR(2) NOT NULL,
    "storage_name" VARCHAR(255) NOT NULL,
    FOREIGN KEY ("storage_name") REFERENCES "storage"("storage_name")
);

-- Adicionando uma restrição para garantir que o tipo de produto seja válido
ALTER TABLE "products"
ADD CHECK ("product_type" IN ('MP', 'PA', 'PI', 'PV', 'SC', 'SV'));
