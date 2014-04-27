#encoding=utf-8
from django.db import models


# Create your models here.

class RestShop(models.Model):
    """关键字"""

    def __unicode__(self):
        return self.name

    name = models.CharField(max_length=32, blank=True, null=True)
    breakfast = models.IntegerField(blank=True, null=True)
    lunch = models.IntegerField(blank=True, null=True)
    meal = models.IntegerField(blank=True, null=True)
    midnight = models.IntegerField(blank=True, null=True)
    #权重
    telephone = models.CharField(max_length=16, blank=True, null=True)
    address = models.CharField(max_length=48, blank=True, null=True)
    weights = models.IntegerField(blank=True, null=True)
    