.class public final Lcom/google/userfeedback/android/api/af;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private final b:Lcom/google/userfeedback/android/api/aj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.google"

    sput-object v0, Lcom/google/userfeedback/android/api/af;->a:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/google/userfeedback/android/api/aj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/userfeedback/android/api/af;->b:Lcom/google/userfeedback/android/api/aj;

    return-void
.end method

.method private a()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/af;->b:Lcom/google/userfeedback/android/api/aj;

    invoke-virtual {v1}, Lcom/google/userfeedback/android/api/aj;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "reports"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to create directory structure for base directory provided"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "logcat"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "-v"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "time"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "-d"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {v0}, Lcom/google/userfeedback/android/api/af;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    const-string v2, "GFEEDBACK"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_2
    const-string v0, ""

    :cond_1
    :goto_3
    return-object v0

    :cond_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_6

    move-result-object v0

    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    const-string v2, "GFEEDBACK"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    move-exception v0

    const-string v1, "GFEEDBACK"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_3
    move-exception v0

    :goto_4
    :try_start_6
    const-string v1, "GFEEDBACK"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_0

    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    :catch_4
    move-exception v0

    const-string v1, "GFEEDBACK"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v2, :cond_3

    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_3
    :goto_6
    throw v0

    :catch_5
    move-exception v1

    const-string v2, "GFEEDBACK"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :catch_6
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/userfeedback/android/api/af;Lcom/google/userfeedback/android/api/ab;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/af;->i(Lcom/google/userfeedback/android/api/ab;)V

    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;)[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x46

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/google/userfeedback/android/api/ab;Lcom/google/userfeedback/android/api/ah;)Landroid/os/AsyncTask;
    .locals 2

    new-instance v0, Lcom/google/userfeedback/android/api/ag;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/userfeedback/android/api/ag;-><init>(Lcom/google/userfeedback/android/api/af;Lcom/google/userfeedback/android/api/ab;Lcom/google/userfeedback/android/api/ah;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/ag;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/google/userfeedback/android/api/ab;)Lcom/x/google/common/io/b/a;
    .locals 1

    new-instance v0, Lcom/google/userfeedback/android/api/ai;

    invoke-direct {v0, p0}, Lcom/google/userfeedback/android/api/ai;-><init>(Lcom/google/userfeedback/android/api/ab;)V

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/ai;->a()Lcom/x/google/common/io/b/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/userfeedback/android/api/af;Lcom/google/userfeedback/android/api/ab;)V
    .locals 0

    invoke-static {p1}, Lcom/google/userfeedback/android/api/af;->h(Lcom/google/userfeedback/android/api/ab;)V

    return-void
.end method

.method private c(Lcom/google/userfeedback/android/api/ab;)V
    .locals 2

    iget-object v0, p0, Lcom/google/userfeedback/android/api/af;->b:Lcom/google/userfeedback/android/api/aj;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/aj;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    iput v1, p1, Lcom/google/userfeedback/android/api/ab;->r:I

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    iput v1, p1, Lcom/google/userfeedback/android/api/ab;->s:I

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/userfeedback/android/api/ab;->t:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/google/userfeedback/android/api/af;Lcom/google/userfeedback/android/api/ab;)V
    .locals 0

    invoke-static {p1}, Lcom/google/userfeedback/android/api/af;->g(Lcom/google/userfeedback/android/api/ab;)V

    return-void
.end method

.method private d(Lcom/google/userfeedback/android/api/ab;)V
    .locals 6

    iget-object v0, p0, Lcom/google/userfeedback/android/api/af;->b:Lcom/google/userfeedback/android/api/aj;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/aj;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/userfeedback/android/api/af;->b:Lcom/google/userfeedback/android/api/aj;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/aj;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/userfeedback/android/api/af;->b:Lcom/google/userfeedback/android/api/aj;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/aj;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/userfeedback/android/api/af;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    iput-object v1, p1, Lcom/google/userfeedback/android/api/ab;->u:[B

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p1, Lcom/google/userfeedback/android/api/ab;->w:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p1, Lcom/google/userfeedback/android/api/ab;->v:I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/google/userfeedback/android/api/ab;->C:Ljava/util/List;

    :try_start_0
    iget-object v0, p0, Lcom/google/userfeedback/android/api/af;->b:Lcom/google/userfeedback/android/api/aj;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/aj;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    iget-object v4, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    sget-object v5, Lcom/google/userfeedback/android/api/af;->a:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/google/userfeedback/android/api/ab;->C:Ljava/util/List;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    :goto_1
    iget-object v0, p1, Lcom/google/userfeedback/android/api/ab;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p1, Lcom/google/userfeedback/android/api/ab;->D:I

    iget-object v0, p0, Lcom/google/userfeedback/android/api/af;->b:Lcom/google/userfeedback/android/api/aj;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/aj;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/userfeedback/android/api/ab;->F:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/userfeedback/android/api/af;->b:Lcom/google/userfeedback/android/api/aj;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/aj;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/userfeedback/android/api/ab;->J:Ljava/lang/String;

    return-void

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic d(Lcom/google/userfeedback/android/api/af;Lcom/google/userfeedback/android/api/ab;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/af;->c(Lcom/google/userfeedback/android/api/ab;)V

    return-void
.end method

.method private e(Lcom/google/userfeedback/android/api/ab;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/userfeedback/android/api/af;->b:Lcom/google/userfeedback/android/api/aj;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/aj;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/userfeedback/android/api/af;->b:Lcom/google/userfeedback/android/api/aj;

    invoke-virtual {v1}, Lcom/google/userfeedback/android/api/aj;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/google/userfeedback/android/api/ab;->x:Ljava/lang/String;

    :try_start_0
    iget-object v1, p1, Lcom/google/userfeedback/android/api/ab;->x:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, p1, Lcom/google/userfeedback/android/api/ab;->x:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object v1, p1, Lcom/google/userfeedback/android/api/ab;->z:Ljava/lang/String;

    iget v1, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v1, p1, Lcom/google/userfeedback/android/api/ab;->b:I

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, p1, Lcom/google/userfeedback/android/api/ab;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/userfeedback/android/api/ab;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/userfeedback/android/api/ab;->y:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/google/userfeedback/android/api/m;->b()Lcom/google/userfeedback/android/api/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/m;->a()Lcom/google/userfeedback/android/api/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/aj;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/userfeedback/android/api/ab;->z:Ljava/lang/String;

    iput-boolean v4, p1, Lcom/google/userfeedback/android/api/ab;->A:Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic e(Lcom/google/userfeedback/android/api/af;Lcom/google/userfeedback/android/api/ab;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/af;->f(Lcom/google/userfeedback/android/api/ab;)V

    return-void
.end method

.method private f(Lcom/google/userfeedback/android/api/ab;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/google/userfeedback/android/api/ab;->B:J

    iget-object v0, p0, Lcom/google/userfeedback/android/api/af;->b:Lcom/google/userfeedback/android/api/aj;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/aj;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/userfeedback/android/api/af;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/userfeedback/android/api/ab;->q:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/userfeedback/android/api/ab;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/userfeedback/android/api/ab;->q:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/userfeedback/android/api/af;->b:Lcom/google/userfeedback/android/api/aj;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/aj;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/userfeedback/android/api/af;->b:Lcom/google/userfeedback/android/api/aj;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/aj;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/userfeedback/android/api/ab;->q:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/google/userfeedback/android/api/af;->b:Lcom/google/userfeedback/android/api/aj;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/aj;->k()Lcom/google/userfeedback/android/api/aa;

    move-result-object v0

    iput-object v0, p1, Lcom/google/userfeedback/android/api/ab;->I:Lcom/google/userfeedback/android/api/aa;

    return-void
.end method

.method static synthetic f(Lcom/google/userfeedback/android/api/af;Lcom/google/userfeedback/android/api/ab;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/af;->e(Lcom/google/userfeedback/android/api/ab;)V

    return-void
.end method

.method private static g(Lcom/google/userfeedback/android/api/ab;)V
    .locals 1

    invoke-static {}, Lcom/google/userfeedback/android/api/m;->b()Lcom/google/userfeedback/android/api/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/m;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/userfeedback/android/api/ab;->a:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/userfeedback/android/api/ab;->H:Ljava/lang/String;

    invoke-static {}, Lcom/google/userfeedback/android/api/m;->b()Lcom/google/userfeedback/android/api/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/m;->a()Lcom/google/userfeedback/android/api/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/aj;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/google/userfeedback/android/api/m;->b()Lcom/google/userfeedback/android/api/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/m;->a()Lcom/google/userfeedback/android/api/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/aj;->f()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/userfeedback/android/api/ab;->G:Ljava/util/List;

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/google/userfeedback/android/api/af;Lcom/google/userfeedback/android/api/ab;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/af;->d(Lcom/google/userfeedback/android/api/ab;)V

    return-void
.end method

.method private static h(Lcom/google/userfeedback/android/api/ab;)V
    .locals 1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/userfeedback/android/api/ab;->d:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/userfeedback/android/api/ab;->e:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/userfeedback/android/api/ab;->f:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/userfeedback/android/api/ab;->g:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/userfeedback/android/api/ab;->m:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/userfeedback/android/api/ab;->n:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/userfeedback/android/api/ab;->l:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/userfeedback/android/api/ab;->k:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/userfeedback/android/api/ab;->j:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/userfeedback/android/api/ab;->h:Ljava/lang/String;

    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/userfeedback/android/api/ab;->i:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/userfeedback/android/api/ab;->i:I

    goto :goto_0
.end method

.method private i(Lcom/google/userfeedback/android/api/ab;)V
    .locals 3

    iget-object v0, p0, Lcom/google/userfeedback/android/api/af;->b:Lcom/google/userfeedback/android/api/aj;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/aj;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v2, p1, Lcom/google/userfeedback/android/api/ab;->p:Ljava/util/List;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/userfeedback/android/api/ab;)Ljava/io/File;
    .locals 6

    invoke-static {p1}, Lcom/google/userfeedback/android/api/af;->b(Lcom/google/userfeedback/android/api/ab;)Lcom/x/google/common/io/b/a;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/userfeedback/android/api/af;->a()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".proto.gz"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v2}, Lcom/x/google/common/io/b/a;->a(Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to rename temporary file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    throw v0

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    return-object v4
.end method

.method public final a(Lcom/google/userfeedback/android/api/ab;Lcom/google/userfeedback/android/api/ah;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/userfeedback/android/api/af;->b(Lcom/google/userfeedback/android/api/ab;Lcom/google/userfeedback/android/api/ah;)Landroid/os/AsyncTask;

    return-void
.end method
