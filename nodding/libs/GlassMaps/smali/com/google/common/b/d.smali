.class final Lcom/google/common/b/d;
.super Ljava/lang/Object;


# direct methods
.method static a(Z)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "mode was UNNECESSARY, but rounding was necessary"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static b(Z)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
