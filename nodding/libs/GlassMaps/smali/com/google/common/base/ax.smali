.class public final Lcom/google/common/base/ax;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1

    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/google/common/base/ax;->b(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/Class;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/Throwable;)V
    .locals 1

    const-class v0, Ljava/lang/Error;

    invoke-static {p0, v0}, Lcom/google/common/base/ax;->a(Ljava/lang/Throwable;Ljava/lang/Class;)V

    const-class v0, Ljava/lang/RuntimeException;

    invoke-static {p0, v0}, Lcom/google/common/base/ax;->a(Ljava/lang/Throwable;Ljava/lang/Class;)V

    return-void
.end method

.method public static b(Ljava/lang/Throwable;Ljava/lang/Class;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/base/ax;->a(Ljava/lang/Throwable;Ljava/lang/Class;)V

    invoke-static {p0}, Lcom/google/common/base/ax;->b(Ljava/lang/Throwable;)V

    return-void
.end method
