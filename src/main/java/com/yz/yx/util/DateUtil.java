package com.yz.yx.util;

import java.util.Date;

public class DateUtil {

    private static final long ONE_MINUTE = 60;

    private static final long ONE_HOUR = 3600;

    private static final long ONE_DAY = 86400;

    private static final long ONE_MONTH = 2592000;

    private static final long ONE_YEAR = 31104000;

    /**
     * 距离截止日期还有多长时间
     *
     * @param date
     * @return
     */

    public static String fromDeadline(Date date) {
        long deadline = date.getTime() / 1000;

        long now = (new Date().getTime()) / 1000;

        long remain = deadline - now;

        long result;

        if (remain <= ONE_HOUR)

            return "只剩下" + remain / ONE_MINUTE + "分钟";

        else if (remain <= ONE_DAY)

            return "只剩下" + remain / ONE_HOUR + "小时"

                    + (remain % ONE_HOUR / ONE_MINUTE) + "分钟";

        else {
            long day = remain / ONE_DAY;

            long hour = remain % ONE_DAY / ONE_HOUR;

            long minute = remain % ONE_DAY % ONE_HOUR / ONE_MINUTE;

            return "剩余" + day + "天" + hour + "小时" + minute + "分钟";

        }
    }

    public static long fromDeadLong(Date date) {
        long deadline = date.getTime() / 1000;

        long now = (new Date().getTime()) / 1000;

        long remain = deadline - now;
        long hour=0;
        long day=0;
        long minute=0;
        long result =0;

        if (remain <= ONE_HOUR){
            minute=remain / ONE_MINUTE;
            result = day + hour + minute;
            return result;
        }else if (remain <= ONE_DAY) {
            hour = remain / ONE_HOUR;
            minute = (remain % ONE_HOUR / ONE_MINUTE);
            result = day + hour + minute;
            return result;
        } else {
            day = remain / ONE_DAY;
            hour = remain % ONE_DAY / ONE_HOUR;
            minute = remain % ONE_DAY % ONE_HOUR / ONE_MINUTE;
            result = day + hour + minute;
            return result;
        }


    }
}


