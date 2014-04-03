.class public final Lcom/google/googlenav/e/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/glass/logging/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/e/a;->a:Lcom/google/glass/logging/i;

    return-void
.end method

.method public static a()V
    .locals 2

    new-instance v0, Lcom/google/googlenav/e/b;

    invoke-static {}, Lcom/google/googlenav/i;->a()Lcom/google/googlenav/common/d/c;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/e/b;-><init>(Lcom/google/googlenav/common/d/c;)V

    invoke-virtual {v0}, Lcom/google/googlenav/e/b;->e()V

    return-void
.end method
