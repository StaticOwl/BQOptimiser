"""
File: main.py
Author: StaticOwl
Date: 23/07/2025

"""

from fastapi import FastAPI
from app.routes.query import router as query_router

app = FastAPI(title="BQOptimiser")

app.include_router(query_router, prefix="/query")


