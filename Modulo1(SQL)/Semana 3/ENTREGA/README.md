# Semana 3

## 👀 Pensamento por trás das decisões

Analisando a demanda, meu primeiro pensamento foi entender como trazer todas as informações relevantes o suficiente para atender ao que foi proposto. 

Para a questão da devolução de produtos, ao observar a tabela **`ORDERS`**, percebi que havia um status específico indicando devolução. A partir disso, bastou realizar a união com as tabelas **`ORDER_ITEMS`** e **`PRODUCTS`**, utilizando um **`COUNT`** para identificar as três categorias com a maior taxa de devolução.

Já para a parte da demanda referente à sazonalidade, optei por não utilizar o **`EXTRACT`**, pois o **`DATE_TRUNC`** já entrega os dados no formato ideal para análise mensal. Assim, consigo transformar esses dados em gráficos com o auxílio de algumas bibliotecas do **`PYTHON`**, como **`MATPLOTLIB`** e **`STATSMODELS`**.
