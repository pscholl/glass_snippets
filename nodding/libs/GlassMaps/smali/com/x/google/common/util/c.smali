.class public final Lcom/x/google/common/util/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/x/google/common/util/f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/x/google/common/util/c;->a()V

    return-void
.end method

.method public static a(I)Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/x/google/common/util/c;->a:Lcom/x/google/common/util/f;

    invoke-virtual {v0, p0}, Lcom/x/google/common/util/f;->a(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)Ljava/lang/Long;
    .locals 1

    sget-object v0, Lcom/x/google/common/util/c;->a:Lcom/x/google/common/util/f;

    invoke-virtual {v0, p0, p1}, Lcom/x/google/common/util/f;->a(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private static a()V
    .locals 2

    new-instance v0, Lcom/x/google/common/util/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/x/google/common/util/e;-><init>(Lcom/x/google/common/util/d;)V

    sput-object v0, Lcom/x/google/common/util/c;->a:Lcom/x/google/common/util/f;

    return-void
.end method
