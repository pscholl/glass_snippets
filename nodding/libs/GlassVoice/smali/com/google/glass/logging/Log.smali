.class public Lcom/google/glass/logging/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

#the value of this static final field might be set in the static constructor
.field private static final LOG_PII:Z = false

.field private static final MAX_TAG_LENGTH:I = 0x17

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/glass/logging/Log;->LOG_PII:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 6
    .parameter "level"
    .parameter "tag"
    .parameter "format"
    .parameter "tr"
    .parameter "args"

    .prologue
    .line 225
    invoke-static {p1, p0}, Lcom/google/glass/logging/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 277
    :goto_0
    return-void

    .line 233
    :cond_0
    if-eqz p4, :cond_1

    :try_start_0
    array-length v2, p4
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_2

    :cond_1
    move-object v1, p2

    .line 240
    .local v1, message:Ljava/lang/String;
    :goto_1
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 263
    :pswitch_0
    if-eqz p3, :cond_6

    .line 264
    invoke-static {p1, v1, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 233
    .end local v1           #message:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/IllegalFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, e:Ljava/util/IllegalFormatException;
    const-string v2, "Log"

    const-string v3, "Error formatting message. format: [%s], args: [%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object p4, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    throw v0

    .line 242
    .end local v0           #e:Ljava/util/IllegalFormatException;
    .restart local v1       #message:Ljava/lang/String;
    :pswitch_1
    if-eqz p3, :cond_3

    .line 243
    invoke-static {p1, v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 245
    :cond_3
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 249
    :pswitch_2
    if-eqz p3, :cond_4

    .line 250
    invoke-static {p1, v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 252
    :cond_4
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 256
    :pswitch_3
    if-eqz p3, :cond_5

    .line 257
    invoke-static {p1, v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 259
    :cond_5
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 266
    :cond_6
    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 270
    :pswitch_4
    if-eqz p3, :cond_7

    .line 271
    invoke-static {p1, v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 273
    :cond_7
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "tag"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 143
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, p2}, Lcom/google/glass/logging/Log;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 144
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter "tag"
    .parameter "tr"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 157
    const/4 v0, 0x3

    invoke-static {v0, p0, p2, p1, p3}, Lcom/google/glass/logging/Log;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 158
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "tag"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 59
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, p2}, Lcom/google/glass/logging/Log;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter "tag"
    .parameter "tr"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 73
    const/4 v0, 0x6

    invoke-static {v0, p0, p2, p1, p3}, Lcom/google/glass/logging/Log;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "tag"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 115
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, p2}, Lcom/google/glass/logging/Log;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter "tag"
    .parameter "tr"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 129
    const/4 v0, 0x4

    invoke-static {v0, p0, p2, p1, p3}, Lcom/google/glass/logging/Log;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method public static isLoggable(Ljava/lang/String;I)Z
    .locals 7
    .parameter "tag"
    .parameter "level"

    .prologue
    const/16 v6, 0x17

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 200
    move-object v2, p0

    .line 201
    .local v2, shortTag:Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_0

    .line 202
    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 205
    :cond_0
    const/4 v5, 0x3

    if-ge p1, v5, :cond_3

    move v1, v3

    .line 206
    .local v1, isVerbose:Z
    :goto_0
    invoke-static {v2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 207
    .local v0, isLoggable:Z
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    if-eqz v0, :cond_4

    :cond_2
    :goto_1
    return v3

    .end local v0           #isLoggable:Z
    .end local v1           #isVerbose:Z
    :cond_3
    move v1, v4

    .line 205
    goto :goto_0

    .restart local v0       #isLoggable:Z
    .restart local v1       #isVerbose:Z
    :cond_4
    move v3, v4

    .line 207
    goto :goto_1
.end method

.method public static logPii(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "level"
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    return-void
.end method

.method public static logPii(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "level"
    .parameter "tag"
    .parameter "message"
    .parameter "tr"

    .prologue
    .line 43
    sget-boolean v0, Lcom/google/glass/logging/Log;->LOG_PII:Z

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/glass/logging/Log;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 46
    :cond_0
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "tag"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 171
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, p2}, Lcom/google/glass/logging/Log;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 172
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter "tag"
    .parameter "tr"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 185
    const/4 v0, 0x2

    invoke-static {v0, p0, p2, p1, p3}, Lcom/google/glass/logging/Log;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 186
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "tag"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 87
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, p2}, Lcom/google/glass/logging/Log;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter "tag"
    .parameter "tr"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 101
    const/4 v0, 0x5

    invoke-static {v0, p0, p2, p1, p3}, Lcom/google/glass/logging/Log;->actuallyLogFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 102
    return-void
.end method
