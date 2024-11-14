CREATE TABLE departments (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL
);
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(id)
);
INSERT INTO departments (id, name, location) VALUES
(1, 'Recursos Humanos', 'São Paulo'),
(2, 'TI', 'Rio de Janeiro'),
(3, 'Marketing', 'Belo Horizonte');
INSERT INTO employees (id, name, salary, department_id) VALUES
(1, 'João Silva', 3500.00, 1),   -- Departamento de Recursos Humanos
(2, 'Maria Oliveira', 4500.00, 2), -- Departamento de TI
(3, 'Carlos Pereira', 3000.00, 3), -- Departamento de Marketing
(4, 'Fernanda Souza', 5200.00, 2), -- Departamento de TI
(5, 'Rafael Lima', 4000.00, 1);   -- Departamento de Recursos Humanos
INSERT INTO employees (id, name, salary, department_id) VALUES
(6, 'Ana Costa', 4700.00, 4);  -- Funcionária Ana Costa no departamento de Vendas (id = 4)
SELECT e.nome AS nome_funcionario, d.nome AS nome_departamento
FROM employees e
JOIN departments d ON e.id_departamento = d.id;
SELECT e.nome AS nome_funcionario, d.nome AS nome_departamento
FROM employees e
JOIN departments d ON e.id_departamento = d.id;
