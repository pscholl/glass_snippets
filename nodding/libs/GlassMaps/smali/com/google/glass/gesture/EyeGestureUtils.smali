.class public Lcom/google/glass/gesture/EyeGestureUtils;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:Lcom/google/glass/logging/i;

.field private static final c:Ljava/util/concurrent/Executor;

.field private static final d:J

.field private static e:Lcom/google/android/glass/hidden/HiddenGestureManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/google/glass/gesture/EyeGestureUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/gesture/EyeGestureUtils;->a:Ljava/lang/String;

    sget-object v0, Lcom/google/glass/gesture/EyeGestureUtils;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/j;->a(Ljava/lang/String;)Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/gesture/EyeGestureUtils;->b:Lcom/google/glass/logging/i;

    new-instance v0, Lcom/google/glass/a/c;

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/glass/gesture/EyeGestureUtils;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":AsyncSerialExecutor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/glass/a/c;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/glass/gesture/EyeGestureUtils;->c:Ljava/util/concurrent/Executor;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/gesture/EyeGestureUtils;->d:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/google/android/glass/hidden/HiddenGestureManager;
    .locals 1

    invoke-static {}, Lcom/google/glass/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/gesture/EyeGestureUtils;->e:Lcom/google/android/glass/hidden/HiddenGestureManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/gesture/EyeGestureUtils;->e:Lcom/google/android/glass/hidden/HiddenGestureManager;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/glass/hidden/HiddenGestureManager;

    invoke-direct {v0, p0}, Lcom/google/android/glass/hidden/HiddenGestureManager;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;)Z
    .locals 2

    invoke-static {p0}, Lcom/google/glass/gesture/EyeGestureUtils;->a(Landroid/content/Context;)Lcom/google/android/glass/hidden/HiddenGestureManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/glass/hidden/HiddenGestureManager;->isEyeGestureDetectorPersistentlyEnabled(I)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;ZI)Z
    .locals 2

    invoke-static {p0}, Lcom/google/glass/gesture/EyeGestureUtils;->a(Landroid/content/Context;)Lcom/google/android/glass/hidden/HiddenGestureManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/glass/hidden/HiddenGestureManager;->startEyeGestureDetector(IZI)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;)Z
    .locals 2

    invoke-static {p0}, Lcom/google/glass/gesture/EyeGestureUtils;->a(Landroid/content/Context;)Lcom/google/android/glass/hidden/HiddenGestureManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/glass/hidden/HiddenGestureManager;->isEyeGestureDetectorRunning(I)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;)Z
    .locals 2

    invoke-static {p0}, Lcom/google/glass/gesture/EyeGestureUtils;->a(Landroid/content/Context;)Lcom/google/android/glass/hidden/HiddenGestureManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/glass/hidden/HiddenGestureManager;->stopEyeGestureDetector(I)Z

    move-result v0

    return v0
.end method
