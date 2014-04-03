.class final Lcom/google/glass/logging/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/glass/net/g;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b()Lcom/google/common/a/d;
    .locals 1

    new-instance v0, Lcom/google/common/a/d;

    invoke-direct {v0}, Lcom/google/common/a/d;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/z;->b()Lcom/google/common/a/d;

    move-result-object v0

    return-object v0
.end method
