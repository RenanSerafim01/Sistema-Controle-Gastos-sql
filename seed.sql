INSERT INTO ref_expense_category (category_name) VALUES 
('Lazer e Entretenimento'),
('Contas de Casa'),
('Alimentação'),
('Transporte');

INSERT INTO cfg_recurring_expense (id_ref_expense_category, description, amount_cents, due_day, payment_method) VALUES 
(1, 'Assinatura Streaming (Filmes)', 4590, 10, 'CREDITO'),
(1, 'Fiel Torcedor VIP', 3500, 5, 'CREDITO'),
(2, 'Conta de Energia Elétrica', 12050, 15, 'DEBITO'),
(2, 'Condomínio', 55000, 10, 'PIX');

INSERT INTO trx_expense (id_ref_expense_category, expense_description, expense_amount, expense_date, payment_method) VALUES 
(3, 'Compra no Mercado da Esquina', 25000, NOW() - INTERVAL '5 days', 'DEBITO'),
(4, 'Abastecimento Carro', 15000, NOW() - INTERVAL '2 days', 'CREDITO'),
(3, 'Pizza de Sexta', 8990, NOW() - INTERVAL '1 day', 'PIX');

SELECT * FROM gerar_gastos_recorrentes_do_mes();
