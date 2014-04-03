.class public final Lcom/google/glass/util/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/glass/logging/i;


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/b;->a:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/b;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/content/Intent;)Lcom/google/glass/util/c;
    .locals 4

    new-instance v0, Lcom/google/glass/util/c;

    invoke-direct {v0}, Lcom/google/glass/util/c;-><init>()V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/google/glass/util/b;->e()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object v1, Lcom/google/glass/util/b;->a:Lcom/google/glass/logging/i;

    const-string v2, "Unknown battery state."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/glass/util/b;->b(Landroid/content/Intent;)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/google/glass/util/c;->a:F

    invoke-direct {p0, p1}, Lcom/google/glass/util/b;->c(Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/glass/util/c;->d:Z

    invoke-direct {p0, p1}, Lcom/google/glass/util/b;->d(Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/glass/util/c;->c:Z

    invoke-direct {p0, p1}, Lcom/google/glass/util/b;->e(Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/glass/util/c;->e:Z

    invoke-direct {p0, p1}, Lcom/google/glass/util/b;->f(Landroid/content/Intent;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/glass/util/c;->b:J

    goto :goto_0
.end method

.method private b(Landroid/content/Intent;)I
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, -0x1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/google/glass/util/b;->e()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object v1, Lcom/google/glass/util/b;->a:Lcom/google/glass/logging/i;

    const-string v2, "Unknown battery state."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "level"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "scale"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eq v1, v0, :cond_0

    if-eq v2, v0, :cond_0

    int-to-float v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    sget-object v1, Lcom/google/glass/util/b;->a:Lcom/google/glass/logging/i;

    const-string v2, "Current battery percent: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/google/glass/util/b;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Landroid/content/Intent;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/google/glass/util/b;->e()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object v0, Lcom/google/glass/util/b;->a:Lcom/google/glass/logging/i;

    const-string v1, "Unknown battery state."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v2

    :cond_0
    const-string v0, "status"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_1
    if-nez v0, :cond_1

    sget-object v0, Lcom/google/glass/util/b;->a:Lcom/google/glass/logging/i;

    const-string v3, "Driver is not reporting charged, checking percent."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/glass/util/b;->b(Landroid/content/Intent;)I

    move-result v0

    const/16 v3, 0x5f

    if-lt v0, v3, :cond_3

    move v0, v1

    :cond_1
    :goto_2
    sget-object v3, Lcom/google/glass/util/b;->a:Lcom/google/glass/logging/i;

    const-string v4, "Battery is charged? %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-interface {v3, v4, v1}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method static synthetic d()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/util/b;->a:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method private d(Landroid/content/Intent;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/google/glass/util/b;->e()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object v0, Lcom/google/glass/util/b;->a:Lcom/google/glass/logging/i;

    const-string v1, "Unknown battery state."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v2

    :cond_0
    const-string v0, "status"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_1
    sget-object v3, Lcom/google/glass/util/b;->a:Lcom/google/glass/logging/i;

    const-string v4, "Battery currently charging? %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-interface {v3, v4, v1}, Lcom/google/glass/logging/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method private e()Landroid/content/Intent;
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/glass/util/b;->b:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private e(Landroid/content/Intent;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/google/glass/util/b;->e()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object v0, Lcom/google/glass/util/b;->a:Lcom/google/glass/logging/i;

    const-string v1, "Unknown battery state."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v2

    :cond_0
    const-string v0, "plugged"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-direct {p0, p1}, Lcom/google/glass/util/b;->d(Landroid/content/Intent;)Z

    move-result v3

    invoke-direct {p0, p1}, Lcom/google/glass/util/b;->c(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v0, :cond_3

    if-nez v3, :cond_1

    if-eqz v4, :cond_3

    :cond_1
    :goto_2
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method private f(Landroid/content/Intent;)J
    .locals 3

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/google/glass/util/b;->e()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object v0, Lcom/google/glass/util/b;->a:Lcom/google/glass/logging/i;

    const-string v1, "Unknown battery state."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "time_to_empty"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method private static final f()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/i2c-dev/i2c-1/device/1-0055/dump_partial_data_flash"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/glass/util/c;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/util/b;->a(Landroid/content/Intent;)Lcom/google/glass/util/c;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/util/b;->e(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
