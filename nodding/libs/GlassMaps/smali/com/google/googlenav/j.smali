.class final Lcom/google/googlenav/j;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/googlenav/common/d/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/googlenav/common/d/c;

    new-instance v1, Lcom/google/googlenav/common/c/a;

    new-instance v2, Lcom/google/googlenav/common/c/b;

    invoke-direct {v2}, Lcom/google/googlenav/common/c/b;-><init>()V

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/c/a;-><init>(Lcom/google/googlenav/common/c/c;)V

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/d/c;-><init>(Lcom/google/googlenav/common/c/c;)V

    sput-object v0, Lcom/google/googlenav/j;->a:Lcom/google/googlenav/common/d/c;

    return-void
.end method

.method static synthetic a()Lcom/google/googlenav/common/d/c;
    .locals 1

    sget-object v0, Lcom/google/googlenav/j;->a:Lcom/google/googlenav/common/d/c;

    return-object v0
.end method
