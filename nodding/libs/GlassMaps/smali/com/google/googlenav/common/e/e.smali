.class public final Lcom/google/googlenav/common/e/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/googlenav/common/e/h;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/google/googlenav/common/e/e;->a()V

    return-void
.end method

.method public static a(I)Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/google/googlenav/common/e/e;->a:Lcom/google/googlenav/common/e/h;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/common/e/h;->a(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)Ljava/lang/Long;
    .locals 1

    sget-object v0, Lcom/google/googlenav/common/e/e;->a:Lcom/google/googlenav/common/e/h;

    invoke-virtual {v0, p0, p1}, Lcom/google/googlenav/common/e/h;->a(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private static a()V
    .locals 2

    new-instance v0, Lcom/google/googlenav/common/e/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/e/g;-><init>(Lcom/google/googlenav/common/e/f;)V

    sput-object v0, Lcom/google/googlenav/common/e/e;->a:Lcom/google/googlenav/common/e/h;

    return-void
.end method
