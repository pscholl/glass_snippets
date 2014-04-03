.class final Lcom/google/common/cache/LongAddables;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/common/base/aw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/google/common/cache/LongAdder;

    invoke-direct {v0}, Lcom/google/common/cache/LongAdder;-><init>()V

    new-instance v0, Lcom/google/common/cache/aw;

    invoke-direct {v0}, Lcom/google/common/cache/aw;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-object v0, Lcom/google/common/cache/LongAddables;->a:Lcom/google/common/base/aw;

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/common/cache/ax;

    invoke-direct {v0}, Lcom/google/common/cache/ax;-><init>()V

    goto :goto_0
.end method

.method public static a()Lcom/google/common/cache/av;
    .locals 1

    sget-object v0, Lcom/google/common/cache/LongAddables;->a:Lcom/google/common/base/aw;

    invoke-interface {v0}, Lcom/google/common/base/aw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/av;

    return-object v0
.end method
