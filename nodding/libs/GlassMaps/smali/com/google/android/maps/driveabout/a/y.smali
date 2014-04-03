.class public final Lcom/google/android/maps/driveabout/a/y;
.super Ljava/lang/Object;


# static fields
.field private static final c:Lcom/google/android/maps/driveabout/a/y;

.field private static final d:Lcom/google/android/maps/driveabout/a/y;


# instance fields
.field private final a:Z

.field private final b:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/a/y;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/a/y;-><init>(ZLjava/io/File;)V

    sput-object v0, Lcom/google/android/maps/driveabout/a/y;->c:Lcom/google/android/maps/driveabout/a/y;

    new-instance v0, Lcom/google/android/maps/driveabout/a/y;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/a/y;-><init>(ZLjava/io/File;)V

    sput-object v0, Lcom/google/android/maps/driveabout/a/y;->d:Lcom/google/android/maps/driveabout/a/y;

    return-void
.end method

.method private constructor <init>(ZLjava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/a/y;->a:Z

    iput-object p2, p0, Lcom/google/android/maps/driveabout/a/y;->b:Ljava/io/File;

    return-void
.end method

.method public static a()Lcom/google/android/maps/driveabout/a/y;
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/a/y;->d:Lcom/google/android/maps/driveabout/a/y;

    return-object v0
.end method

.method public static a(Ljava/io/File;)Lcom/google/android/maps/driveabout/a/y;
    .locals 2

    if-nez p0, :cond_0

    sget-object v0, Lcom/google/android/maps/driveabout/a/y;->c:Lcom/google/android/maps/driveabout/a/y;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/a/y;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/google/android/maps/driveabout/a/y;-><init>(ZLjava/io/File;)V

    goto :goto_0
.end method

.method public static b()Lcom/google/android/maps/driveabout/a/y;
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/a/y;->c:Lcom/google/android/maps/driveabout/a/y;

    return-object v0
.end method


# virtual methods
.method public final c()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/y;->b:Ljava/io/File;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/a/y;->a:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/a/y;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/y;->b:Ljava/io/File;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
