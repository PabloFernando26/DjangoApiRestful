from django.urls import path
from .views import ProductoListApi, ProductoDetailApi

urlpatterns = [
    path('productos/', ProductoListApi.as_view(), name='productos-list'),
    path('productos/<int:pk>/', ProductoDetailApi.as_view(), name='producto-detail'),
]
