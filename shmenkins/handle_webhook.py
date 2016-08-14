# -*- coding: utf-8 -*-
import logging


def handle(event, context):
    log = logging.getLogger()
    log.setLevel(logging.DEBUG)
    log.debug("received event " + str(event))
    return None
