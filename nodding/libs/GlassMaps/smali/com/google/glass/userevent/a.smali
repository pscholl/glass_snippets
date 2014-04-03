.class public final Lcom/google/glass/userevent/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:Lcom/google/glass/logging/i;

.field private static final c:Lcom/google/common/base/c;

.field private static final d:Lcom/google/common/base/al;


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x7c

    const/16 v2, 0x3d

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/userevent/a;->b:Lcom/google/glass/logging/i;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/c;->a(Ljava/lang/CharSequence;)Lcom/google/common/base/c;

    move-result-object v0

    sput-object v0, Lcom/google/glass/userevent/a;->c:Lcom/google/common/base/c;

    invoke-static {v3}, Lcom/google/common/base/al;->a(C)Lcom/google/common/base/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/al;->a()Lcom/google/common/base/al;

    move-result-object v0

    sput-object v0, Lcom/google/glass/userevent/a;->d:Lcom/google/common/base/al;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/userevent/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/google/glass/f/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/glass/userevent/a;-><init>(Landroid/content/Context;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/glass/userevent/a;->e:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/google/glass/userevent/a;->f:Z

    return-void
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/glass/userevent/a;->c:Lcom/google/common/base/c;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/c;->c(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/google/glass/userevent/a;->b(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/glass/userevent/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/userevent/a;->b()V

    return-void
.end method

.method static synthetic a(Lcom/google/glass/userevent/a;Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/glass/userevent/a;->c(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;)V
    .locals 2

    const/16 v1, 0x7c

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-static {p0}, Lcom/google/glass/userevent/a;->a(Ljava/lang/StringBuilder;)V

    invoke-static {p1}, Lcom/google/glass/userevent/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/google/glass/userevent/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static b(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)Lcom/google/common/a/d;
    .locals 3

    new-instance v0, Lcom/google/common/a/d;

    invoke-direct {v0}, Lcom/google/common/a/d;-><init>()V

    iget-object v1, p0, Lcom/google/glass/userevent/UserEventAction;->action:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/common/a/d;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/a/d;->b:Ljava/lang/Long;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p1, v0, Lcom/google/common/a/d;->e:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public static varargs b(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "null key"

    invoke-static {p0, v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p2

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "invalid number of key/value arguments (%s"

    new-array v4, v1, [Ljava/lang/Object;

    array-length v5, p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ai;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, p0, p1}, Lcom/google/glass/userevent/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    move v3, v2

    :goto_1
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    if-ge v3, v0, :cond_1

    aget-object v0, p2, v3

    const-string v5, "null key (vararg %s)"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0, v5, v6}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Ljava/lang/String;

    const-string v6, "key (vararg %s) is not a String."

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v5, v6, v7}, Lcom/google/common/base/ai;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/String;

    add-int/lit8 v5, v3, 0x1

    aget-object v5, p2, v5

    invoke-static {v4, v0, v5}, Lcom/google/glass/userevent/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v3, 0x2

    move v3, v0

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method private b()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/glass/f/a;->d()V

    iget-boolean v0, p0, Lcom/google/glass/userevent/a;->f:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/glass/userevent/a;->b:Lcom/google/glass/logging/i;

    const-string v1, "Not saving to disk as logging is disabled."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/glass/userevent/a;->b:Lcom/google/glass/logging/i;

    const-string v1, "Saving to disk."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.glass.logging"

    const-string v2, "com.google.glass.logging.UserEventService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "force_save_to_disk"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/glass/userevent/a;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private c(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/google/glass/f/a;->d()V

    iget-boolean v0, p0, Lcom/google/glass/userevent/a;->f:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.glass.logging"

    const-string v2, "com.google.glass.logging.UserEventService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "user_event"

    invoke-static {p1, p2}, Lcom/google/glass/userevent/a;->b(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)Lcom/google/common/a/d;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/nano/b;->toByteArray(Lcom/google/protobuf/nano/b;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-static {}, Lcom/google/glass/util/ba;->a()Lcom/google/glass/util/ba;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/userevent/a;->e:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/util/ba;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/google/glass/a/a;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/userevent/c;

    invoke-direct {v1, p0}, Lcom/google/glass/userevent/c;-><init>(Lcom/google/glass/userevent/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/google/glass/userevent/a;->b:Lcom/google/glass/logging/i;

    const-string v1, "Log user event. action: [%s], data: [%s], loggingEnabled: [%s]."

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    iget-boolean v4, p0, Lcom/google/glass/userevent/a;->f:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/glass/a/a;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/userevent/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/userevent/b;-><init>(Lcom/google/glass/userevent/a;Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
