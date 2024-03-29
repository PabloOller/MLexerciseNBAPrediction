FROM python:3.8

RUN pip install pandas scikit-learn streamlit
RUN pip install joblib==1.1.0
COPY src/* /app/
COPY data/* /app/data/

WORKDIR /app

ENTRYPOINT ["streamlit", "run", "app.py"]

