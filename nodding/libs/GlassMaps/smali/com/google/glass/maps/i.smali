.class public final Lcom/google/glass/maps/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/datarequest/k;


# instance fields
.field final synthetic a:Lcom/google/glass/maps/g;

.field private final b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

.field private final c:Z


# direct methods
.method public constructor <init>(Lcom/google/glass/maps/g;Lcom/google/googlenav/datarequest/DataRequestDispatcher;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/i;->a:Lcom/google/glass/maps/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/glass/maps/i;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iput-boolean p3, p0, Lcom/google/glass/maps/i;->c:Z

    return-void
.end method


# virtual methods
.method public final a(IZLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/maps/i;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(Lcom/google/googlenav/datarequest/k;)V

    iget-object v0, p0, Lcom/google/glass/maps/i;->a:Lcom/google/glass/maps/g;

    invoke-static {v0}, Lcom/google/glass/maps/g;->a(Lcom/google/glass/maps/g;)Lcom/google/glass/maps/ca;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/i;->a:Lcom/google/glass/maps/g;

    invoke-static {v1}, Lcom/google/glass/maps/g;->b(Lcom/google/glass/maps/g;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/glass/maps/bs;->error_network_failure:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/maps/ca;->a(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/google/glass/maps/i;->a:Lcom/google/glass/maps/g;

    invoke-static {v0}, Lcom/google/glass/maps/g;->b(Lcom/google/glass/maps/g;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network_error_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/maps/GlassUserEventLogger;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/google/googlenav/datarequest/d;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    instance-of v0, p1, Lcom/google/glass/maps/directions/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/i;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(Lcom/google/googlenav/datarequest/k;)V

    check-cast p1, Lcom/google/glass/maps/directions/e;

    invoke-static {}, Lcom/google/glass/maps/g;->n()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "onComplete: Status=%s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/glass/maps/directions/e;->h()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/glass/maps/directions/e;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/glass/maps/directions/e;->e()[Lcom/google/glass/maps/directions/i;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/glass/maps/i;->c:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/glass/maps/i;->a:Lcom/google/glass/maps/g;

    invoke-static {v1}, Lcom/google/glass/maps/g;->a(Lcom/google/glass/maps/g;)Lcom/google/glass/maps/ca;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/ca;->a([Lcom/google/glass/maps/directions/i;)V

    iget-object v1, p0, Lcom/google/glass/maps/i;->a:Lcom/google/glass/maps/g;

    invoke-static {v1}, Lcom/google/glass/maps/g;->b(Lcom/google/glass/maps/g;)Landroid/content/Context;

    move-result-object v1

    array-length v0, v0

    invoke-static {v1, v0, v4}, Lcom/google/glass/maps/GlassUserEventLogger;->b(Landroid/content/Context;II)V

    :goto_0
    invoke-static {}, Lcom/google/glass/maps/ao;->c()Lcom/google/glass/maps/ao;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/glass/maps/directions/e;->d()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/ao;->a(Lcom/google/android/maps/driveabout/nav/ao;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/glass/maps/i;->a:Lcom/google/glass/maps/g;

    aget-object v0, v0, v4

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/g;->a(Lcom/google/glass/maps/directions/i;)V

    iget-object v0, p0, Lcom/google/glass/maps/i;->a:Lcom/google/glass/maps/g;

    invoke-static {v0}, Lcom/google/glass/maps/g;->b(Lcom/google/glass/maps/g;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/i;->a:Lcom/google/glass/maps/g;

    invoke-static {v1}, Lcom/google/glass/maps/g;->c(Lcom/google/glass/maps/g;)Lcom/google/glass/maps/directions/i;

    move-result-object v1

    iget-object v1, v1, Lcom/google/glass/maps/directions/i;->b:[Lcom/google/glass/maps/directions/b;

    array-length v1, v1

    invoke-static {v0, v5, v1}, Lcom/google/glass/maps/GlassUserEventLogger;->b(Landroid/content/Context;II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/glass/maps/i;->a:Lcom/google/glass/maps/g;

    invoke-static {v0}, Lcom/google/glass/maps/g;->a(Lcom/google/glass/maps/g;)Lcom/google/glass/maps/ca;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/i;->a:Lcom/google/glass/maps/g;

    invoke-static {v1}, Lcom/google/glass/maps/g;->b(Lcom/google/glass/maps/g;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/maps/c/p;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/google/glass/maps/ca;->a(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/google/glass/maps/i;->a:Lcom/google/glass/maps/g;

    invoke-static {v0}, Lcom/google/glass/maps/g;->b(Lcom/google/glass/maps/g;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "no_trips"

    invoke-static {v0, v1}, Lcom/google/glass/maps/GlassUserEventLogger;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/maps/directions/e;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/glass/maps/i;->a:Lcom/google/glass/maps/g;

    invoke-static {v0}, Lcom/google/glass/maps/g;->b(Lcom/google/glass/maps/g;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/maps/GlassUserEventLogger;->f(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/glass/maps/i;->a:Lcom/google/glass/maps/g;

    invoke-static {v0}, Lcom/google/glass/maps/g;->a(Lcom/google/glass/maps/g;)Lcom/google/glass/maps/ca;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/glass/maps/directions/e;->c()[Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/ca;->a([Lcom/google/android/maps/driveabout/nav/ao;)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/google/glass/maps/g;->n()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Unexpected transit directions response status"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/maps/i;->a:Lcom/google/glass/maps/g;

    invoke-static {v0}, Lcom/google/glass/maps/g;->a(Lcom/google/glass/maps/g;)Lcom/google/glass/maps/ca;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/i;->a:Lcom/google/glass/maps/g;

    invoke-static {v1}, Lcom/google/glass/maps/g;->b(Lcom/google/glass/maps/g;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/maps/c/p;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/google/glass/maps/ca;->a(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/google/glass/maps/i;->a:Lcom/google/glass/maps/g;

    invoke-static {v0}, Lcom/google/glass/maps/g;->b(Lcom/google/glass/maps/g;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "error"

    invoke-static {v0, v1}, Lcom/google/glass/maps/GlassUserEventLogger;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final b(Lcom/google/googlenav/datarequest/d;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/glass/maps/g;->n()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "onPermanentFailure"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/glass/maps/i;->b:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(Lcom/google/googlenav/datarequest/k;)V

    iget-object v0, p0, Lcom/google/glass/maps/i;->a:Lcom/google/glass/maps/g;

    invoke-static {v0}, Lcom/google/glass/maps/g;->a(Lcom/google/glass/maps/g;)Lcom/google/glass/maps/ca;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/i;->a:Lcom/google/glass/maps/g;

    invoke-static {v1}, Lcom/google/glass/maps/g;->b(Lcom/google/glass/maps/g;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/maps/c/p;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/google/glass/maps/ca;->a(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/google/glass/maps/i;->a:Lcom/google/glass/maps/g;

    invoke-static {v0}, Lcom/google/glass/maps/g;->b(Lcom/google/glass/maps/g;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "permanent_failure"

    invoke-static {v0, v1}, Lcom/google/glass/maps/GlassUserEventLogger;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
