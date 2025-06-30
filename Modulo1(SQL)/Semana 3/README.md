# Semana 3

## 📌 Conteúdo

Dando continuidade ao aprendizado, esta semana o foco está em consultas mais complexas com **subqueries** e o uso de **funções avançadas de agregação e data**, importantes para análises mais profundas e estratégicas:

- **Subqueries** (consultas aninhadas para filtragens ou agregações intermediárias)
- Funções agregadas avançadas: **`COUNT(DISTINCT)`**, **`ROUND`**
- Funções de data: **`EXTRACT`**, **`DATE_TRUNC`** (para análise sazonal)

## 🎯 Prática/Demanda

**Demanda do Gestor:**

> "Analise a sazonalidade mensal de vendas e me indique as 3 categorias com maior taxa de devolução. Justifique com dados."

**Entregável:**  
Relatório com subqueries e funções agregadas que inclua:

- Volume de vendas por mês (utilizando **`DATE_TRUNC`** ou **`EXTRACT`** para agrupar por mês)
- Cálculo da taxa de devolução por categoria:
  - Fórmula: **(número de pedidos devolvidos / número total de pedidos da categoria)**
- Identificação das **3 categorias com maior taxa de devolução**
- Justificativa com dados comparativos entre as categorias