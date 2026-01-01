---
categories: 
   - Temario
tags:
   - Ciencia 
   - Datos 
---

La Ciencia de Datos es una carrera que estudia, administra, analiza 
e interpreta todo tipo de datos con el fin de que las organizaciones tomen mejores decisiones y 
resuelvan problemas complejos. Para lograrlo, se combinan técnicas de 
**computación** y **estadística**, como el _aprendizaje automático_ o _machine learning_, 
la inteligencia artificial, el reconocimiento de patrones, el aprendizaje estadístico, 
los modelos de probabilidad y la visualización.

--- 

> Prompt: Quiero aprender sobre ciencia de datos desde cero. Determina y comparte el 20% de las lecciones de este tema que son más cruciales para entender el 80% restante. Máximo hasta 5 lecciones.

---

**1. Manipulación y limpieza de datos (Python: pandas + numpy)**

* **Qué aprender:** estructuras básicas (Series, DataFrame), indexación/filtrado, joins/merge, groupby/aggregaciones, pivot tables, manejo de valores faltantes, transformación de columnas, tipos de datos, operaciones vectorizadas con numpy.
* **Por qué importa:** ~80% del trabajo real es transformar datos para que sean analizables; sin esto, modelos y visualizaciones fallan.
* **Ejercicios prácticos:**

  * Limpia un CSV desordenado: detectar/llenar/elimnar NaN, corregir tipos, normalizar nombres de columnas.
  * Agrupa ventas por mes y producto y calcula KPI’s (suma, media, mediana).
  * Une (merge) dos tablas: clientes + transacciones y crea la tabla agregada por cliente.

**2. Estadística y probabilidad aplicada (descriptiva + inferencial básica)**

* **Qué aprender:** medias, medianas, varianza, desviación estándar; distribuciones comunes; percentiles; correlación vs causalidad; intervalos de confianza; pruebas de hipótesis básicas (t-test, chi-cuadrado); overfitting/underfitting desde la perspectiva estadística.
* **Por qué importa:** entender la variabilidad y la incertidumbre te permite interpretar resultados, validar hallazgos y tomar decisiones informadas.
* **Ejercicios prácticos:**

  * Describe la distribución de una variable (histograma, sesgo, curtosis, percentiles).
  * Realiza una prueba de hipótesis para comparar dos grupos (por ejemplo: conversión A vs B).
  * Calcula y explica un intervalo de confianza para una media.

**3. Exploratory Data Analysis (EDA) + Visualización efectiva**

* **Qué aprender:** técnicas de EDA (tablas resumen, plots univariantes y bivariantes), visualización con matplotlib/seaborn (o librería similar), diseño de gráficos claros, detectar outliers y patrones, storytelling con datos (qué mostrar y cómo contarlo).
* **Por qué importa:** la EDA revela las señales útiles, guía la ingeniería de características y comunica resultados a otros; una buena visualización hace que tus resultados se entiendan y se usen.
* **Ejercicios prácticos:**

  * Genera un informe visual (5–8 gráficos) que responda 3 preguntas de negocio sobre un dataset (ej.: ¿qué producto vende mejor?, ¿hay estacionalidad?).
  * Crea un dashboard sencillo (notebook interactivo o export PDF) que muestre KPIs y filtros por segmento.

**4. Fundamentos de Machine Learning (modelos, evaluación y feature engineering)**

* **Qué aprender:** diferencia supervisado/no supervisado; modelos simples y robustos (regresión lineal, árbol de decisión, k-NN, k-means); pipeline básico: selección de features, preprocesamiento, entrenamiento, validación (cross-validation), métricas (accuracy, precision, recall, F1, RMSE, AUC según caso). También: importancia de features y transformación (normalización, encoding).
* **Por qué importa:** con modelos simples bien aplicados y evaluados correctamente resuelves la mayoría de problemas prácticos sin necesitar modelos complejos.
* **Ejercicios prácticos:**

  * Construye una regresión para predecir un valor numérico y evalúa con RMSE + gráfico residual.
  * Clasifica una etiqueta binaria, calcula precision/recall/F1 y usa cross-validation.
  * Haz feature engineering: crea variables temporales (día/mes), interacciones y evalúa si mejoran el modelo.

**5. Acceso a datos y reproducibilidad (SQL + buenas prácticas de workflow)**

* **Qué aprender:** consultas SQL básicas (SELECT, JOIN, GROUP BY, window functions básicas), cómo conectar SQL a Python, uso de notebooks (Jupyter/Colab) de forma reproducible, control de versiones básico (git), y cómo empaquetar un análisis: scripts, notebooks limpios, README.
* **Por qué importa:** la mayoría de datos vienen de bases relacionales; reproducir y versionar tu trabajo es lo que transforma un análisis en un producto confiable y colaborativo.
* **Ejercicios prácticos:**

  * Escribe consultas que extraigan un dataset agregando varias tablas (joins + group by).
  * Publica un pequeño repo con: notebook limpio, script para regenerar resultados y README que explique cómo correrlo.
