.class public final Lcom/google/glass/logging/FormattingLoggers;
.super Ljava/lang/Object;
.source "FormattingLoggers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;,
        Lcom/google/glass/logging/FormattingLoggers$Listener;
    }
.end annotation


# static fields
.field private static final BUILD_TYPE:Lcom/google/glass/build/BuildHelper$Type; = null

.field static final PROPERTY_KEY_MAX_LENGTH:I = 0x17
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FormattingLoggers"

.field private static logListener:Lcom/google/glass/logging/FormattingLoggers$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->getType()Lcom/google/glass/build/BuildHelper$Type;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/FormattingLoggers;->BUILD_TYPE:Lcom/google/glass/build/BuildHelper$Type;

    .line 54
    new-instance v0, Lcom/google/glass/logging/FormattingLoggers$1;

    invoke-direct {v0}, Lcom/google/glass/logging/FormattingLoggers$1;-><init>()V

    sput-object v0, Lcom/google/glass/logging/FormattingLoggers;->logListener:Lcom/google/glass/logging/FormattingLoggers$Listener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    return-void
.end method

.method static synthetic access$100(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 28
    invoke-static/range {p0 .. p5}, Lcom/google/glass/logging/FormattingLoggers;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static varargs actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .parameter "level"
    .parameter "tagProperty"
    .parameter "tag"
    .parameter "throwable"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 255
    sget-object v2, Lcom/google/glass/logging/FormattingLoggers;->BUILD_TYPE:Lcom/google/glass/build/BuildHelper$Type;

    sget-object v3, Lcom/google/glass/build/BuildHelper$Type;->USER:Lcom/google/glass/build/BuildHelper$Type;

    if-eq v2, v3, :cond_0

    const/4 v2, 0x3

    if-ge p0, v2, :cond_1

    :cond_0
    invoke-static {p1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 307
    :goto_0
    return-void

    .line 262
    :cond_1
    if-eqz p5, :cond_2

    :try_start_0
    array-length v2, p5
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_3

    :cond_2
    move-object v1, p4

    .line 269
    .local v1, message:Ljava/lang/String;
    :goto_1
    sget-object v2, Lcom/google/glass/logging/FormattingLoggers;->logListener:Lcom/google/glass/logging/FormattingLoggers$Listener;

    invoke-interface {v2, p0, p2, v1, p3}, Lcom/google/glass/logging/FormattingLoggers$Listener;->onLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 293
    :pswitch_0
    if-eqz p3, :cond_7

    .line 294
    invoke-static {p2, v1, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 262
    .end local v1           #message:Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-static {p4, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/IllegalFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Ljava/util/IllegalFormatException;
    const-string v2, "FormattingLoggers"

    const-string v3, "Error formatting message. format: [%s], args: [%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p4, v4, v5

    const/4 v5, 0x1

    aput-object p5, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    throw v0

    .line 272
    .end local v0           #e:Ljava/util/IllegalFormatException;
    .restart local v1       #message:Ljava/lang/String;
    :pswitch_1
    if-eqz p3, :cond_4

    .line 273
    invoke-static {p2, v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 275
    :cond_4
    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 279
    :pswitch_2
    if-eqz p3, :cond_5

    .line 280
    invoke-static {p2, v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 282
    :cond_5
    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 286
    :pswitch_3
    if-eqz p3, :cond_6

    .line 287
    invoke-static {p2, v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 289
    :cond_6
    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 296
    :cond_7
    invoke-static {p2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 300
    :pswitch_4
    if-eqz p3, :cond_8

    .line 301
    invoke-static {p2, v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 303
    :cond_8
    invoke-static {p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 270
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private static cropPropertyKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    const/16 v1, 0x17

    .line 233
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .end local p0
    :cond_0
    return-object p0
.end method

.method private static getCallerClassSimpleName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 223
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/google/glass/logging/StackTraceUtils;->getCallerClassName(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, fullCallerClassName:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/glass/logging/StackTraceUtils;->getSimpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getContextLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 158
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getCallerClassSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public static getContextLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .parameter "loggingGroup"

    .prologue
    .line 192
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getCallerClassSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;
    .locals 6
    .parameter "parent"
    .parameter "childTag"

    .prologue
    .line 207
    const-string v2, "null parent"

    invoke-static {p0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v2, "null childTag"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v2, "%s/%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, tag:Ljava/lang/String;
    instance-of v2, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;

    if-eqz v2, :cond_0

    check-cast p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;

    .end local p0
    iget-object v1, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    .line 212
    .local v1, tagProperty:Ljava/lang/String;
    :goto_0
    new-instance v2, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/logging/FormattingLoggers$1;)V

    return-object v2

    .line 210
    .end local v1           #tagProperty:Ljava/lang/String;
    .restart local p0
    :cond_0
    invoke-interface {p0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/logging/FormattingLoggers;->cropPropertyKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;
    .locals 6
    .parameter "instance"

    .prologue
    .line 107
    const-string v1, "null instance"

    invoke-static {p0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, tag:Ljava/lang/String;
    new-instance v1, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;

    const-string v2, "%s[%x]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->cropPropertyKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/logging/FormattingLoggers$1;)V

    return-object v1
.end method

.method public static getLogger(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;
    .locals 6
    .parameter "instance"
    .parameter "loggingGroup"

    .prologue
    .line 72
    const-string v1, "null instance"

    invoke-static {p0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v1, "null loggingGroup"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, tag:Ljava/lang/String;
    new-instance v1, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;

    const-string v2, "%s.%s[%x]"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/logging/FormattingLoggers$1;)V

    return-object v1
.end method

.method public static getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;
    .locals 3
    .parameter "tag"

    .prologue
    .line 127
    const-string v0, "null tag"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;

    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->cropPropertyKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/logging/FormattingLoggers$1;)V

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;
    .locals 4
    .parameter "tag"
    .parameter "loggingGroup"

    .prologue
    .line 92
    const-string v0, "null tag"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v0, "null loggingGroup"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;

    const-string v1, "%s.%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/logging/FormattingLoggers$1;)V

    return-object v0
.end method

.method public static setListener(Lcom/google/glass/logging/FormattingLoggers$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 217
    sput-object p0, Lcom/google/glass/logging/FormattingLoggers;->logListener:Lcom/google/glass/logging/FormattingLoggers$Listener;

    .line 218
    return-void
.end method
