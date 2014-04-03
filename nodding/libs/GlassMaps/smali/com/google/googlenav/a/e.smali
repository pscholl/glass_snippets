.class final Lcom/google/googlenav/a/e;
.super Lcom/google/googlenav/common/d/d;


# instance fields
.field final synthetic a:Lcom/google/googlenav/a/d;


# direct methods
.method constructor <init>(Lcom/google/googlenav/a/d;Lcom/google/googlenav/common/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/a/e;->a:Lcom/google/googlenav/a/d;

    invoke-direct {p0, p2}, Lcom/google/googlenav/common/d/d;-><init>(Lcom/google/googlenav/common/d/c;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a()Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/a/e;->a:Lcom/google/googlenav/a/d;

    invoke-static {v1}, Lcom/google/googlenav/a/d;->a(Lcom/google/googlenav/a/d;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/a/c;->a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;Z)V

    return-void
.end method
