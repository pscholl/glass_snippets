.class public final Lcom/google/android/maps/driveabout/a/al;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/a/ar;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/a/ar;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/a/ar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/a/al;->a:Lcom/google/android/maps/driveabout/a/ar;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/a/at;)Lcom/google/android/maps/driveabout/a/a;
    .locals 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/maps/driveabout/a/au;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/maps/driveabout/a/au;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/al;->a:Lcom/google/android/maps/driveabout/a/ar;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/a/au;->e()Lcom/google/android/maps/driveabout/a/at;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/maps/driveabout/a/ar;->a(Lcom/google/android/maps/driveabout/a/at;)Lcom/google/android/maps/driveabout/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/a/al;->a:Lcom/google/android/maps/driveabout/a/ar;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/a/au;->f()Lcom/google/android/maps/driveabout/a/at;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/maps/driveabout/a/ar;->a(Lcom/google/android/maps/driveabout/a/at;)Lcom/google/android/maps/driveabout/a/a;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/a/ai;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/maps/driveabout/a/a;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Lcom/google/android/maps/driveabout/a/ai;-><init>([Lcom/google/android/maps/driveabout/a/a;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/al;->a:Lcom/google/android/maps/driveabout/a/ar;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/a/ar;->a(Lcom/google/android/maps/driveabout/a/at;)Lcom/google/android/maps/driveabout/a/a;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/al;->a:Lcom/google/android/maps/driveabout/a/ar;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/a/ar;->a()V

    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/a/at;Lcom/google/android/maps/driveabout/a/as;)V
    .locals 3

    instance-of v0, p1, Lcom/google/android/maps/driveabout/a/au;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/maps/driveabout/a/au;

    new-instance v0, Lcom/google/android/maps/driveabout/a/am;

    invoke-direct {v0, p1, p2}, Lcom/google/android/maps/driveabout/a/am;-><init>(Lcom/google/android/maps/driveabout/a/au;Lcom/google/android/maps/driveabout/a/as;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/al;->a:Lcom/google/android/maps/driveabout/a/ar;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/a/au;->e()Lcom/google/android/maps/driveabout/a/at;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/google/android/maps/driveabout/a/ar;->a(Lcom/google/android/maps/driveabout/a/at;Lcom/google/android/maps/driveabout/a/as;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/al;->a:Lcom/google/android/maps/driveabout/a/ar;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/a/au;->f()Lcom/google/android/maps/driveabout/a/at;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/google/android/maps/driveabout/a/ar;->a(Lcom/google/android/maps/driveabout/a/at;Lcom/google/android/maps/driveabout/a/as;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/al;->a:Lcom/google/android/maps/driveabout/a/ar;

    invoke-interface {v0, p1, p2}, Lcom/google/android/maps/driveabout/a/ar;->a(Lcom/google/android/maps/driveabout/a/at;Lcom/google/android/maps/driveabout/a/as;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/al;->a:Lcom/google/android/maps/driveabout/a/ar;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/a/ar;->b()V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/al;->a:Lcom/google/android/maps/driveabout/a/ar;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/a/ar;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
