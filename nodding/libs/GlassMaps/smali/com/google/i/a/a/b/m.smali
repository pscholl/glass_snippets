.class public final Lcom/google/i/a/a/b/m;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/googlenav/common/io/b/d;

.field public static final b:Lcom/google/googlenav/common/io/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/b/d;-><init>()V

    sput-object v0, Lcom/google/i/a/a/b/m;->a:Lcom/google/googlenav/common/io/b/d;

    new-instance v0, Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/b/d;-><init>()V

    sput-object v0, Lcom/google/i/a/a/b/m;->b:Lcom/google/googlenav/common/io/b/d;

    sget-object v0, Lcom/google/i/a/a/b/m;->a:Lcom/google/googlenav/common/io/b/d;

    const/16 v1, 0x224

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/googlenav/common/io/b/d;->a(IILjava/lang/Object;)Lcom/google/googlenav/common/io/b/d;

    sget-object v0, Lcom/google/i/a/a/b/m;->b:Lcom/google/googlenav/common/io/b/d;

    const/16 v1, 0x21e

    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Lcom/google/googlenav/common/e/e;->a(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/googlenav/common/io/b/d;->a(IILjava/lang/Object;)Lcom/google/googlenav/common/io/b/d;

    move-result-object v0

    const/16 v1, 0x21b

    const/4 v2, 0x2

    sget-object v3, Lcom/google/g/a/a/a/a;->a:Lcom/google/googlenav/common/io/b/d;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/common/io/b/d;->a(IILjava/lang/Object;)Lcom/google/googlenav/common/io/b/d;

    return-void
.end method
