.class public final Lcom/google/glass/logging/j;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/glass/build/BuildHelper$Type;

.field private static b:Lcom/google/glass/logging/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/build/BuildHelper;->b()Lcom/google/glass/build/BuildHelper$Type;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/j;->a:Lcom/google/glass/build/BuildHelper$Type;

    new-instance v0, Lcom/google/glass/logging/k;

    invoke-direct {v0}, Lcom/google/glass/logging/k;-><init>()V

    sput-object v0, Lcom/google/glass/logging/j;->b:Lcom/google/glass/logging/l;

    return-void
.end method

.method public static a()Lcom/google/glass/logging/i;
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/logging/j;->a(Ljava/lang/String;)Lcom/google/glass/logging/i;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/glass/logging/i;Ljava/lang/String;)Lcom/google/glass/logging/i;
    .locals 4

    const-string v0, "null parent"

    invoke-static {p0, v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "null childTag"

    invoke-static {p1, v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "%s/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p0}, Lcom/google/glass/logging/i;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    instance-of v0, p0, Lcom/google/glass/logging/m;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/glass/logging/m;

    iget-object v0, p0, Lcom/google/glass/logging/m;->a:Ljava/lang/String;

    :goto_0
    new-instance v2, Lcom/google/glass/logging/m;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/google/glass/logging/m;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/logging/k;)V

    return-object v2

    :cond_0
    invoke-interface {p0}, Lcom/google/glass/logging/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/logging/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/glass/logging/i;
    .locals 6

    const-string v0, "null instance"

    invoke-static {p0, v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/glass/logging/m;

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

    invoke-static {v0}, Lcom/google/glass/logging/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/google/glass/logging/m;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/logging/k;)V

    return-object v1
.end method

.method public static a(Ljava/lang/String;)Lcom/google/glass/logging/i;
    .locals 3

    const-string v0, "null tag"

    invoke-static {p0, v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/glass/logging/m;

    invoke-static {p0}, Lcom/google/glass/logging/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/logging/m;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/logging/k;)V

    return-object v0
.end method

.method static synthetic a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/glass/logging/j;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/glass/logging/t;->a(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/logging/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v1, 0x17

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static varargs b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    sget-object v0, Lcom/google/glass/logging/j;->a:Lcom/google/glass/build/BuildHelper$Type;

    sget-object v1, Lcom/google/glass/build/BuildHelper$Type;->USER:Lcom/google/glass/build/BuildHelper$Type;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    if-ge p0, v0, :cond_2

    :cond_0
    invoke-static {p1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p5, :cond_3

    :try_start_0
    array-length v0, p5
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_4

    :cond_3
    :goto_1
    sget-object v0, Lcom/google/glass/logging/j;->b:Lcom/google/glass/logging/l;

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz p3, :cond_1

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-static {p4, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/IllegalFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p4

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "FormattingLoggers"

    const-string v2, "Error formatting message. format: [%s], args: [%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p4, v3, v4

    const/4 v4, 0x1

    aput-object p5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :pswitch_1
    if-eqz p3, :cond_1

    goto :goto_0

    :pswitch_2
    if-eqz p3, :cond_5

    invoke-static {p2, p4, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_5
    invoke-static {p2, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    if-eqz p3, :cond_6

    invoke-static {p2, p4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_6
    invoke-static {p2, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    if-eqz p3, :cond_7

    invoke-static {p2, p4, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_7
    invoke-static {p2, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method
