.class public Lcom/google/glass/util/DateHelper;
.super Ljava/lang/Object;
.source "DateHelper.java"


# static fields
.field private static final MONTH_IN_MILLIS:J = 0x9c363c00L

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/DateHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    return-void
.end method

.method public static formattedDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "timestamp"

    .prologue
    .line 49
    sget v1, Lcom/google/glass/common/R$string;->date_format_pattern:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, dateFormat:Ljava/lang/String;
    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formattedTime(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "timestamp"
    .parameter "hideAmPm"

    .prologue
    .line 37
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p0, v1, p3}, Lcom/google/glass/util/DateHelper;->getTimeFormatPattern(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, timeFormat:Ljava/lang/String;
    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getRelativeTimestamp(Landroid/content/Context;J)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "time"

    .prologue
    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-static/range {v0 .. v5}, Lcom/google/glass/util/DateHelper;->getRelativeTimestamp(Landroid/content/Context;JJZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimestamp(Landroid/content/Context;JJZ)Ljava/lang/String;
    .locals 27
    .parameter "context"
    .parameter "time"
    .parameter "currentTime"
    .parameter "summarizePastHour"

    .prologue
    .line 129
    cmp-long v23, p1, p3

    if-ltz v23, :cond_d

    .line 130
    sub-long v6, p1, p3

    .line 131
    .local v6, delta:J
    const-wide/32 v23, 0xea60

    cmp-long v23, v6, v23

    if-gez v23, :cond_0

    .line 132
    sget v23, Lcom/google/glass/common/R$string;->timestamp_now_future:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 277
    :goto_0
    return-object v23

    .line 135
    :cond_0
    const-wide/32 v23, 0xea60

    move-wide/from16 v0, v23

    invoke-static {v6, v7, v0, v1}, Lcom/google/glass/util/DateHelper;->roundTimeDelta(JJ)J

    move-result-wide v6

    .line 137
    const-wide/32 v23, 0x36ee80

    cmp-long v23, v6, v23

    if-gez v23, :cond_2

    .line 138
    const-wide/32 v23, 0xea60

    div-long v13, v6, v23

    .line 139
    .local v13, mins:J
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    sget v24, Lcom/google/glass/common/R$string;->timestamp_future_prefix:I

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-wide/16 v25, 0x1

    cmp-long v23, v13, v25

    if-nez v23, :cond_1

    sget v23, Lcom/google/glass/common/R$string;->timestamp_min:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    :goto_1
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto :goto_0

    :cond_1
    sget v23, Lcom/google/glass/common/R$string;->timestamp_mins:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto :goto_1

    .line 144
    .end local v13           #mins:J
    :cond_2
    const-wide/32 v23, 0x36ee80

    move-wide/from16 v0, v23

    invoke-static {v6, v7, v0, v1}, Lcom/google/glass/util/DateHelper;->roundTimeDelta(JJ)J

    move-result-wide v6

    .line 146
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 147
    .local v12, midnight:Ljava/util/Calendar;
    const/16 v23, 0xb

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 148
    const/16 v23, 0xc

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 149
    const/16 v23, 0xd

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 150
    const/16 v23, 0xe

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 151
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v23

    const-wide/32 v25, 0x5265c00

    add-long v17, v23, v25

    .line 153
    .local v17, nextMidnightTime:J
    const-wide/32 v23, 0x112a880

    add-long v23, v23, p3

    move-wide/from16 v0, v17

    move-wide/from16 v2, v23

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v23

    cmp-long v23, p1, v23

    if-gtz v23, :cond_4

    .line 154
    const-wide/32 v23, 0x36ee80

    div-long v8, v6, v23

    .line 155
    .local v8, hours:J
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    sget v24, Lcom/google/glass/common/R$string;->timestamp_future_prefix:I

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-wide/16 v25, 0x1

    cmp-long v23, v8, v25

    if-nez v23, :cond_3

    sget v23, Lcom/google/glass/common/R$string;->timestamp_hour:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    :goto_2
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    :cond_3
    sget v23, Lcom/google/glass/common/R$string;->timestamp_hours:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto :goto_2

    .line 160
    .end local v8           #hours:J
    :cond_4
    const-wide/32 v23, 0x5265c00

    move-wide/from16 v0, v23

    invoke-static {v6, v7, v0, v1}, Lcom/google/glass/util/DateHelper;->roundTimeDelta(JJ)J

    move-result-wide v6

    .line 164
    const-wide/32 v23, 0x5265c00

    add-long v23, v23, v17

    cmp-long v23, p1, v23

    if-gtz v23, :cond_5

    .line 165
    sget v23, Lcom/google/glass/common/R$string;->timestamp_tomorrow:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    .line 168
    :cond_5
    const-wide/32 v23, 0x240c8400

    cmp-long v23, v6, v23

    if-gez v23, :cond_7

    .line 171
    const-wide/16 v23, 0x2

    const-wide/32 v25, 0x5265c00

    div-long v25, v6, v25

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 172
    .local v4, days:J
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    sget v24, Lcom/google/glass/common/R$string;->timestamp_future_prefix:I

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-wide/16 v25, 0x1

    cmp-long v23, v4, v25

    if-nez v23, :cond_6

    sget v23, Lcom/google/glass/common/R$string;->timestamp_day:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    :goto_3
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    :cond_6
    sget v23, Lcom/google/glass/common/R$string;->timestamp_days:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto :goto_3

    .line 177
    .end local v4           #days:J
    :cond_7
    const-wide v23, 0x9c363c00L

    cmp-long v23, v6, v23

    if-gez v23, :cond_9

    .line 178
    const-wide/32 v23, 0x240c8400

    move-wide/from16 v0, v23

    invoke-static {v6, v7, v0, v1}, Lcom/google/glass/util/DateHelper;->roundTimeDelta(JJ)J

    move-result-wide v6

    .line 179
    const-wide/32 v23, 0x240c8400

    div-long v19, v6, v23

    .line 180
    .local v19, weeks:J
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    sget v24, Lcom/google/glass/common/R$string;->timestamp_future_prefix:I

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-wide/16 v25, 0x1

    cmp-long v23, v19, v25

    if-nez v23, :cond_8

    sget v23, Lcom/google/glass/common/R$string;->timestamp_week:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    :goto_4
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    :cond_8
    sget v23, Lcom/google/glass/common/R$string;->timestamp_weeks:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto :goto_4

    .line 185
    .end local v19           #weeks:J
    :cond_9
    const-wide v23, 0x7528ad000L

    cmp-long v23, v6, v23

    if-gez v23, :cond_b

    .line 186
    const-wide v23, 0x9c363c00L

    move-wide/from16 v0, v23

    invoke-static {v6, v7, v0, v1}, Lcom/google/glass/util/DateHelper;->roundTimeDelta(JJ)J

    move-result-wide v6

    .line 187
    const-wide v23, 0x9c363c00L

    div-long v15, v6, v23

    .line 188
    .local v15, months:J
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    sget v24, Lcom/google/glass/common/R$string;->timestamp_future_prefix:I

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-wide/16 v25, 0x1

    cmp-long v23, v15, v25

    if-nez v23, :cond_a

    sget v23, Lcom/google/glass/common/R$string;->timestamp_month:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    :goto_5
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    :cond_a
    sget v23, Lcom/google/glass/common/R$string;->timestamp_months:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto :goto_5

    .line 193
    .end local v15           #months:J
    :cond_b
    const-wide v23, 0x7528ad000L

    move-wide/from16 v0, v23

    invoke-static {v6, v7, v0, v1}, Lcom/google/glass/util/DateHelper;->roundTimeDelta(JJ)J

    move-result-wide v6

    .line 194
    const-wide v23, 0x7528ad000L

    div-long v21, v6, v23

    .line 195
    .local v21, years:J
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    sget v24, Lcom/google/glass/common/R$string;->timestamp_future_prefix:I

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-wide/16 v25, 0x1

    cmp-long v23, v21, v25

    if-nez v23, :cond_c

    sget v23, Lcom/google/glass/common/R$string;->timestamp_year:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    :goto_6
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    :cond_c
    sget v23, Lcom/google/glass/common/R$string;->timestamp_years:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto :goto_6

    .line 202
    .end local v6           #delta:J
    .end local v12           #midnight:Ljava/util/Calendar;
    .end local v17           #nextMidnightTime:J
    .end local v21           #years:J
    :cond_d
    sub-long v6, p3, p1

    .line 204
    .restart local v6       #delta:J
    if-eqz p5, :cond_f

    .line 205
    const-wide/32 v23, 0x493e0

    cmp-long v23, v6, v23

    if-gez v23, :cond_e

    .line 206
    sget v23, Lcom/google/glass/common/R$string;->timestamp_recent:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    .line 209
    :cond_e
    const-wide/32 v23, 0x36ee80

    cmp-long v23, v6, v23

    if-gez v23, :cond_12

    .line 210
    sget v23, Lcom/google/glass/common/R$string;->timestamp_past_hour:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    .line 214
    :cond_f
    const-wide/32 v23, 0xea60

    cmp-long v23, v6, v23

    if-gez v23, :cond_10

    .line 215
    sget v23, Lcom/google/glass/common/R$string;->timestamp_now_past:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    .line 218
    :cond_10
    const-wide/32 v23, 0xea60

    move-wide/from16 v0, v23

    invoke-static {v6, v7, v0, v1}, Lcom/google/glass/util/DateHelper;->roundTimeDelta(JJ)J

    move-result-wide v6

    .line 220
    const-wide/32 v23, 0x36ee80

    cmp-long v23, v6, v23

    if-gez v23, :cond_12

    .line 221
    const-wide/32 v23, 0xea60

    div-long v13, v6, v23

    .line 222
    .restart local v13       #mins:J
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-wide/16 v25, 0x1

    cmp-long v23, v13, v25

    if-nez v23, :cond_11

    sget v23, Lcom/google/glass/common/R$string;->timestamp_min:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    :goto_7
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget v24, Lcom/google/glass/common/R$string;->timestamp_past_suffix:I

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    :cond_11
    sget v23, Lcom/google/glass/common/R$string;->timestamp_mins:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto :goto_7

    .line 228
    .end local v13           #mins:J
    :cond_12
    const-wide/32 v23, 0x36ee80

    move-wide/from16 v0, v23

    invoke-static {v6, v7, v0, v1}, Lcom/google/glass/util/DateHelper;->roundTimeDelta(JJ)J

    move-result-wide v6

    .line 230
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 231
    .restart local v12       #midnight:Ljava/util/Calendar;
    const/16 v23, 0xb

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 232
    const/16 v23, 0xc

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 233
    const/16 v23, 0xd

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 234
    const/16 v23, 0xe

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 235
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 237
    .local v10, lastMidnightTime:J
    const-wide/32 v23, 0x112a880

    sub-long v23, p3, v23

    move-wide/from16 v0, v23

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v23

    cmp-long v23, p1, v23

    if-ltz v23, :cond_14

    .line 238
    const-wide/32 v23, 0x36ee80

    div-long v8, v6, v23

    .line 239
    .restart local v8       #hours:J
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-wide/16 v25, 0x1

    cmp-long v23, v8, v25

    if-nez v23, :cond_13

    sget v23, Lcom/google/glass/common/R$string;->timestamp_hour:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    :goto_8
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget v24, Lcom/google/glass/common/R$string;->timestamp_past_suffix:I

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    :cond_13
    sget v23, Lcom/google/glass/common/R$string;->timestamp_hours:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto :goto_8

    .line 244
    .end local v8           #hours:J
    :cond_14
    const-wide/32 v23, 0x5265c00

    move-wide/from16 v0, v23

    invoke-static {v6, v7, v0, v1}, Lcom/google/glass/util/DateHelper;->roundTimeDelta(JJ)J

    move-result-wide v6

    .line 246
    const-wide/32 v23, 0x5265c00

    sub-long v23, v10, v23

    cmp-long v23, p1, v23

    if-ltz v23, :cond_15

    .line 247
    sget v23, Lcom/google/glass/common/R$string;->timestamp_yesterday:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    .line 250
    :cond_15
    const-wide/32 v23, 0x240c8400

    cmp-long v23, v6, v23

    if-gez v23, :cond_17

    .line 253
    const-wide/16 v23, 0x2

    const-wide/32 v25, 0x5265c00

    div-long v25, v6, v25

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 254
    .restart local v4       #days:J
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-wide/16 v25, 0x1

    cmp-long v23, v4, v25

    if-nez v23, :cond_16

    sget v23, Lcom/google/glass/common/R$string;->timestamp_day:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    :goto_9
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget v24, Lcom/google/glass/common/R$string;->timestamp_past_suffix:I

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    :cond_16
    sget v23, Lcom/google/glass/common/R$string;->timestamp_days:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto :goto_9

    .line 259
    .end local v4           #days:J
    :cond_17
    const-wide v23, 0x9c363c00L

    cmp-long v23, v6, v23

    if-gez v23, :cond_19

    .line 260
    const-wide/32 v23, 0x240c8400

    move-wide/from16 v0, v23

    invoke-static {v6, v7, v0, v1}, Lcom/google/glass/util/DateHelper;->roundTimeDelta(JJ)J

    move-result-wide v6

    .line 261
    const-wide/32 v23, 0x240c8400

    div-long v19, v6, v23

    .line 262
    .restart local v19       #weeks:J
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-wide/16 v25, 0x1

    cmp-long v23, v19, v25

    if-nez v23, :cond_18

    sget v23, Lcom/google/glass/common/R$string;->timestamp_week:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    :goto_a
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget v24, Lcom/google/glass/common/R$string;->timestamp_past_suffix:I

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    :cond_18
    sget v23, Lcom/google/glass/common/R$string;->timestamp_weeks:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto :goto_a

    .line 267
    .end local v19           #weeks:J
    :cond_19
    const-wide v23, 0x7528ad000L

    cmp-long v23, v6, v23

    if-gez v23, :cond_1b

    .line 268
    const-wide v23, 0x9c363c00L

    move-wide/from16 v0, v23

    invoke-static {v6, v7, v0, v1}, Lcom/google/glass/util/DateHelper;->roundTimeDelta(JJ)J

    move-result-wide v6

    .line 269
    const-wide v23, 0x9c363c00L

    div-long v15, v6, v23

    .line 270
    .restart local v15       #months:J
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-wide/16 v25, 0x1

    cmp-long v23, v15, v25

    if-nez v23, :cond_1a

    sget v23, Lcom/google/glass/common/R$string;->timestamp_month:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    :goto_b
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget v24, Lcom/google/glass/common/R$string;->timestamp_past_suffix:I

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    :cond_1a
    sget v23, Lcom/google/glass/common/R$string;->timestamp_months:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto :goto_b

    .line 275
    .end local v15           #months:J
    :cond_1b
    const-wide v23, 0x7528ad000L

    move-wide/from16 v0, v23

    invoke-static {v6, v7, v0, v1}, Lcom/google/glass/util/DateHelper;->roundTimeDelta(JJ)J

    move-result-wide v6

    .line 276
    const-wide v23, 0x7528ad000L

    div-long v21, v6, v23

    .line 277
    .restart local v21       #years:J
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-wide/16 v25, 0x1

    cmp-long v23, v21, v25

    if-nez v23, :cond_1c

    sget v23, Lcom/google/glass/common/R$string;->timestamp_year:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    :goto_c
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget v24, Lcom/google/glass/common/R$string;->timestamp_past_suffix:I

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    :cond_1c
    sget v23, Lcom/google/glass/common/R$string;->timestamp_years:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto :goto_c
.end method

.method private static getTimeFormatPattern(Landroid/content/Context;ZZ)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "is24HourFormat"
    .parameter "hideAmPm"

    .prologue
    .line 63
    if-eqz p1, :cond_0

    .line 64
    sget v0, Lcom/google/glass/common/R$string;->time_format_pattern_24h:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    .line 66
    :cond_0
    if-eqz p2, :cond_1

    .line 67
    sget v0, Lcom/google/glass/common/R$string;->time_format_pattern_12h:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_1
    sget v0, Lcom/google/glass/common/R$string;->time_format_pattern_12h_am_pm:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getVideoRecordingTimeString(J)Ljava/lang/String;
    .locals 13
    .parameter "elapsedTimeMs"

    .prologue
    .line 79
    const-wide/16 v11, 0x3e8

    div-long v8, p0, v11

    .line 80
    .local v8, seconds:J
    const-wide/16 v11, 0x3c

    div-long v2, v8, v11

    .line 81
    .local v2, minutes:J
    const-wide/16 v11, 0x3c

    div-long v0, v2, v11

    .line 82
    .local v0, hours:J
    const-wide/16 v11, 0x3c

    mul-long/2addr v11, v0

    sub-long v4, v2, v11

    .line 83
    .local v4, remainderMinutes:J
    const-wide/16 v11, 0x3c

    mul-long/2addr v11, v2

    sub-long v6, v8, v11

    .line 85
    .local v6, remainderSeconds:J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v10, timeStringBuilder:Ljava/lang/StringBuilder;
    const-wide/16 v11, 0x0

    cmp-long v11, v0, v11

    if-lez v11, :cond_0

    .line 89
    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 91
    const v11, 0xee01

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    :cond_0
    const-wide/16 v11, 0x0

    cmp-long v11, v0, v11

    if-lez v11, :cond_1

    const-wide/16 v11, 0xa

    cmp-long v11, v4, v11

    if-gez v11, :cond_1

    .line 96
    const/16 v11, 0x30

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    :cond_1
    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 100
    const v11, 0xee01

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    const-wide/16 v11, 0xa

    cmp-long v11, v6, v11

    if-gez v11, :cond_2

    .line 104
    const/16 v11, 0x30

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    :cond_2
    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method

.method public static isTimeInInterval(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "time"
    .parameter "interval"
    .parameter "delimiter"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 292
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 293
    .local v4, startEnd:[Ljava/lang/String;
    array-length v8, v4

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 296
    const/4 v8, 0x3

    :try_start_0
    invoke-static {v8}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, format:Ljava/lang/String;
    const/4 v8, 0x3

    const/4 v9, 0x3

    invoke-static {v8, v9}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v3

    .line 302
    .local v3, formatter:Ljava/text/DateFormat;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v4, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 305
    .local v5, startTime:Ljava/util/Date;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 308
    .local v1, endTime:Ljava/util/Date;
    invoke-virtual {v5, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 309
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    add-long/2addr v8, v10

    invoke-virtual {v1, v8, v9}, Ljava/util/Date;->setTime(J)V

    .line 312
    :cond_0
    invoke-virtual {p0, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_1

    .line 317
    .end local v1           #endTime:Ljava/util/Date;
    .end local v2           #format:Ljava/lang/String;
    .end local v3           #formatter:Ljava/text/DateFormat;
    .end local v5           #startTime:Ljava/util/Date;
    :goto_0
    return v6

    .restart local v1       #endTime:Ljava/util/Date;
    .restart local v2       #format:Ljava/lang/String;
    .restart local v3       #formatter:Ljava/text/DateFormat;
    .restart local v5       #startTime:Ljava/util/Date;
    :cond_1
    move v6, v7

    .line 312
    goto :goto_0

    .line 313
    .end local v1           #endTime:Ljava/util/Date;
    .end local v2           #format:Ljava/lang/String;
    .end local v3           #formatter:Ljava/text/DateFormat;
    .end local v5           #startTime:Ljava/util/Date;
    :catch_0
    move-exception v0

    .line 314
    .local v0, e:Ljava/text/ParseException;
    sget-object v6, Lcom/google/glass/util/DateHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Error parsing time interval"

    new-array v9, v7, [Ljava/lang/Object;

    invoke-interface {v6, v0, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v0           #e:Ljava/text/ParseException;
    :cond_2
    move v6, v7

    .line 317
    goto :goto_0
.end method

.method private static roundTimeDelta(JJ)J
    .locals 4
    .parameter "delta"
    .parameter "precision"

    .prologue
    .line 123
    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x2

    div-long v2, p2, v2

    add-long/2addr v2, p0

    div-long/2addr v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    mul-long/2addr v0, p2

    return-wide v0
.end method
