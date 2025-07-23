"""
File: query.py
Author: StaticOwl
Date: 23/07/2025

"""

from fastapi import APIRouter

router = APIRouter()

@router.get("/ping")
def ping():
    return {"msg": "BQOptimiser backend is alive"}
