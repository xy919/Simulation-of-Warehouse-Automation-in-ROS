#!/usr/bin/env python
import rospy

from flexbe_msgs.msg import BehaviorLog


class Logger(object):
    '''
    Realizes behavior-specific logging.
    '''
    REPORT_INFO = BehaviorLog.INFO
    REPORT_WARN = BehaviorLog.WARN
    REPORT_HINT = BehaviorLog.HINT
    REPORT_ERROR = BehaviorLog.ERROR
    REPORT_DEBUG = BehaviorLog.DEBUG

    LOGGING_TOPIC = 'flexbe/log'

    _pub = None

    @staticmethod
    def initialize():
        Logger._pub = rospy.Publisher(Logger.LOGGING_TOPIC, BehaviorLog, queue_size=100)

    @staticmethod
    def log(text, severity):
        if Logger._pub is None:
            Logger.initialize()
        # send message with logged text
        msg = BehaviorLog()
        msg.text = str(text)
        msg.status_code = severity
        Logger._pub.publish(msg)
        # also log locally
        Logger.local(text, severity)

    @staticmethod
    def local(text, severity):
        if severity == Logger.REPORT_INFO:
            rospy.loginfo(text)
        elif severity == Logger.REPORT_WARN:
            rospy.logwarn(text)
        elif severity == Logger.REPORT_HINT:
            rospy.loginfo('\033[94mBehavior Hint: %s\033[0m', text)
        elif severity == Logger.REPORT_ERROR:
            rospy.logerr(text)
        elif severity == Logger.REPORT_DEBUG:
            rospy.logdebug(text)
        else:
            rospy.logdebug(text + ' (unknown log level %s)' % str(severity))

    @staticmethod
    def logdebug(text, *args):
        Logger.log(text % args, Logger.REPORT_DEBUG)

    @staticmethod
    def loginfo(text, *args):
        Logger.log(text % args, Logger.REPORT_INFO)

    @staticmethod
    def logwarn(text, *args):
        Logger.log(text % args, Logger.REPORT_WARN)

    @staticmethod
    def loghint(text, *args):
        Logger.log(text % args, Logger.REPORT_HINT)

    @staticmethod
    def logerr(text, *args):
        Logger.log(text % args, Logger.REPORT_ERROR)

    @staticmethod
    def localdebug(text, *args):
        Logger.local(text % args, Logger.REPORT_DEBUG)

    @staticmethod
    def localinfo(text, *args):
        Logger.local(text % args, Logger.REPORT_INFO)
