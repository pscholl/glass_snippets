.class public final Lcom/google/common/util/concurrent/s;
.super Lcom/google/common/util/concurrent/AbstractFuture;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;-><init>()V

    return-void
.end method

.method public static c()Lcom/google/common/util/concurrent/s;
    .locals 1

    new-instance v0, Lcom/google/common/util/concurrent/s;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/s;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/Throwable;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->a(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method
