# Create your views here.
#encoding=utf-8

import json
import datetime
import time
import random

from django.utils import timezone
from django.db import connection
from django.db.models import Q
from django.utils.timezone import utc
from django.shortcuts import render
from django.views.decorators.csrf import csrf_exempt
from django.views.generic.base import View
from django.http import HttpResponse
from django.http import HttpResponseRedirect
from django.template import loader
from django.template.context import (Context, RequestContext)
from django.utils.safestring import mark_safe
from django.shortcuts import get_object_or_404
from django.template.loader import render_to_string
from django.core.urlresolvers import reverse
from django.views.decorators.csrf import csrf_exempt



from .models import RestShop

TIME_TABLE = {
    '0': "midnight",# 夜宵
    '1': "midnight", 
    '2': "midnight", #time error
    '3': "breakfast",#早饭
    '4': "breakfast",
    '5': "breakfast",
    '6': "breakfast",
    '7': "breakfast",
    '8': "breakfast",
    '9': "breakfast",
    '10': "lunch", #中午
    '11': "lunch", #中午
    '12': "lunch", #中午
    '13': "lunch", #中午
    '14': "lunch", #中午
    '15': "meal", #晚上
    '16': "meal", #晚上
    '17': "meal", #晚上
    '18': "meal", #晚上
    '19': "meal", #晚上
    '20': "meal", #晚上
    '21': "midnight",
    '22': "midnight",
    '23': "midnight",
}

MEAL_NAME = {
    'breakfast': u'早餐',
    'lunch':u"中餐",
    'meal':u"晚餐",
    'midnight':u'夜宵'
}

def getmeals_mobile(request):
    """随机返回餐馆"""
    now_hour = str(time.localtime(time.time()).tm_hour)
    filter_conditon = TIME_TABLE.get(now_hour)
    res_query = RestShop.objects.filter(Q(**{filter_conditon: "1"}))
    data = [(r.name, r.telephone , r.address) for r in res_query]
    json_data = json.dumps(data)
    return HttpResponse(json_data)

def home(request):
    now_hour = str(datetime.datetime.utcnow().hour+8)
    time_v = filter_conditon = TIME_TABLE.get(now_hour)
    time_eat = MEAL_NAME.get(time_v)
    page = render_to_string("myapp.html", {"time_eat": time_eat}, context_instance=None)
    return HttpResponse(page)

