.class public final Lcom/google/glass/util/g;
.super Ljava/lang/Object;


# static fields
.field private static final d:Lcom/google/glass/logging/i;

.field private static e:Ljava/util/concurrent/LinkedBlockingQueue;

.field private static final f:[B


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:I

.field protected final c:I

.field private final g:Lcom/google/glass/timeline/a;

.field private h:Lcom/google/glass/e/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x4

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/g;->d:Lcom/google/glass/logging/i;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/google/glass/util/g;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    sget-object v1, Lcom/google/glass/util/g;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v2, 0x4000

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x20

    new-array v0, v0, [B

    sput-object v0, Lcom/google/glass/util/g;->f:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/glass/util/g;->a:Landroid/content/Context;

    iput p2, p0, Lcom/google/glass/util/g;->b:I

    iput p3, p0, Lcom/google/glass/util/g;->c:I

    new-instance v0, Lcom/google/glass/timeline/a;

    invoke-direct {v0, p1}, Lcom/google/glass/timeline/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/util/g;->g:Lcom/google/glass/timeline/a;

    :try_start_0
    new-instance v0, Lcom/google/glass/e/a;

    sget-object v1, Lcom/google/glass/app/GlassApplication;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/glass/e/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/util/g;->h:Lcom/google/glass/e/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/util/g;->h:Lcom/google/glass/e/a;

    sget-object v1, Lcom/google/glass/util/g;->d:Lcom/google/glass/logging/i;

    const-string v2, "DirectoryTracker threw IOException during construction."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;IILcom/google/glass/util/u;)Landroid/graphics/Bitmap;
    .locals 16

    invoke-static {}, Lcom/google/glass/f/a;->d()V

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/glass/util/g;->d:Lcom/google/glass/logging/i;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The file \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" does not exist. Not decoding it as an image."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v5, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    sget-object v1, Lcom/google/glass/util/g;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-eqz v1, :cond_1

    iput-object v1, v5, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    :cond_1
    :try_start_0
    sget-object v6, Lcom/google/glass/util/g;->f:[B

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-static/range {p3 .. p3}, Lcom/google/glass/util/g;->a(Lcom/google/glass/util/u;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v2, Lcom/google/glass/util/g;->d:Lcom/google/glass/logging/i;

    const-string v3, "Request for bitmap has been cancelled. Will not read file."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    sget-object v3, Lcom/google/glass/util/g;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_2
    move-object v1, v2

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    sget-object v9, Lcom/google/glass/util/g;->f:[B

    array-length v9, v9

    int-to-long v9, v9

    cmp-long v3, v3, v9

    if-lez v3, :cond_5

    sget-object v3, Lcom/google/glass/util/g;->d:Lcom/google/glass/logging/i;

    const-string v4, "Shared file read buffer is too small to hold: %s bytes"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-interface {v3, v4, v9}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    new-array v3, v3, [B

    move-object/from16 v0, p3

    invoke-static {v2, v3, v0}, Lcom/google/glass/util/af;->a(Ljava/io/File;[BLcom/google/glass/util/u;)I

    move-result v2

    const/4 v4, 0x1

    iput-boolean v4, v5, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    move-object v4, v3

    move v3, v2

    :goto_1
    invoke-static/range {p3 .. p3}, Lcom/google/glass/util/g;->a(Lcom/google/glass/util/u;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/google/glass/util/g;->d:Lcom/google/glass/logging/i;

    const-string v3, "Request for bitmap has been cancelled. Will not decode dimensions."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_4

    sget-object v3, Lcom/google/glass/util/g;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_4
    move-object v1, v2

    goto/16 :goto_0

    :cond_5
    :try_start_3
    sget-object v3, Lcom/google/glass/util/g;->f:[B

    move-object/from16 v0, p3

    invoke-static {v2, v3, v0}, Lcom/google/glass/util/af;->a(Ljava/io/File;[BLcom/google/glass/util/u;)I

    move-result v2

    const/4 v4, 0x0

    iput-boolean v4, v5, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    move-object v4, v3

    move v3, v2

    goto :goto_1

    :cond_6
    const/4 v2, 0x1

    iput-boolean v2, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    invoke-static {v4, v2, v3, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v9, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v10, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v2, 0x1

    if-gtz p1, :cond_7

    const/16 p1, 0x1

    :cond_7
    div-int v11, v9, p1

    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v11, 0x1

    if-gtz p2, :cond_8

    const/16 p2, 0x1

    :cond_8
    div-int v12, v10, p2

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v2, v11}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v2

    :goto_2
    div-int v11, v9, v2

    const/16 v12, 0x400

    if-gt v11, v12, :cond_9

    div-int v11, v10, v2

    const/16 v12, 0x400

    if-le v11, v12, :cond_a

    :cond_9
    mul-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_a
    iput v2, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-eqz p3, :cond_b

    new-instance v2, Lcom/google/glass/util/i;

    invoke-direct {v2, v5}, Lcom/google/glass/util/i;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/google/glass/util/u;->a(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_b
    const/4 v2, 0x0

    iput-boolean v2, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    invoke-static {v4, v2, v3, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget v11, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget-object v12, Lcom/google/glass/util/g;->d:Lcom/google/glass/logging/i;

    const-string v13, "Decoded a %sx%s image (%s) into a %sx%s bitmap, took %sms"

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v14, v15

    const/4 v9, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v14, v9

    const/4 v9, 0x2

    aput-object p0, v14, v9

    const/4 v9, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v14, v9

    const/4 v9, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v14, v9

    const/4 v5, 0x5

    sub-long/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v14, v5

    invoke-interface {v12, v13, v14}, Lcom/google/glass/logging/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v1, :cond_c

    sget-object v3, Lcom/google/glass/util/g;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_c
    move-object v1, v2

    goto/16 :goto_0

    :cond_d
    :try_start_5
    sget-object v2, Lcom/google/glass/util/g;->d:Lcom/google/glass/logging/i;

    const-string v3, "Request for bitmap has been cancelled. Will not decode image."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_e

    sget-object v3, Lcom/google/glass/util/g;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_e
    move-object v1, v2

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    :try_start_6
    monitor-exit v6

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v2

    :try_start_7
    sget-object v3, Lcom/google/glass/util/g;->d:Lcom/google/glass/logging/i;

    const-string v4, "The file \"%s\" could not be read. Not decoding it as an image."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-interface {v3, v2, v4, v5}, Lcom/google/glass/logging/i;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    sget-object v3, Lcom/google/glass/util/g;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_f
    move-object v1, v2

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    if-eqz v1, :cond_10

    sget-object v3, Lcom/google/glass/util/g;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_10
    throw v2
.end method

.method private static a(Lcom/google/glass/util/u;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/util/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;IILcom/google/glass/util/u;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-static {}, Lcom/google/glass/f/a;->d()V

    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->a()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/util/CachedFilesManager;->a(Ljava/lang/String;)Lcom/google/glass/util/CachedFilesManager$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/util/CachedFilesManager$Type;->NONE:Lcom/google/glass/util/CachedFilesManager$Type;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->a()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    new-instance v1, Lcom/google/glass/util/h;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/google/glass/util/h;-><init>(Lcom/google/glass/util/g;IILcom/google/glass/util/u;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/glass/util/CachedFilesManager;->a(Ljava/lang/String;Lcom/google/glass/util/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/glass/util/g;->a(Ljava/lang/String;IILcom/google/glass/util/u;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;ZLcom/google/glass/util/u;)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/glass/f/a;->d()V

    iget v0, p0, Lcom/google/glass/util/g;->b:I

    iget v1, p0, Lcom/google/glass/util/g;->c:I

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/google/glass/util/g;->b(Ljava/lang/String;IILcom/google/glass/util/u;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method
