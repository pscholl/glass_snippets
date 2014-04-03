.class final Lcom/google/android/maps/driveabout/a/am;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/a/as;


# instance fields
.field private a:Lcom/google/android/maps/driveabout/a/au;

.field private b:Lcom/google/android/maps/driveabout/a/as;

.field private c:Lcom/google/android/maps/driveabout/a/a;

.field private d:Lcom/google/android/maps/driveabout/a/a;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/a/au;Lcom/google/android/maps/driveabout/a/as;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/a/am;->a:Lcom/google/android/maps/driveabout/a/au;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/a/am;->b:Lcom/google/android/maps/driveabout/a/as;

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/a/a;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/am;->b:Lcom/google/android/maps/driveabout/a/as;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/am;->b:Lcom/google/android/maps/driveabout/a/as;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/am;->a:Lcom/google/android/maps/driveabout/a/au;

    invoke-interface {v0, v1, p1}, Lcom/google/android/maps/driveabout/a/as;->a(Lcom/google/android/maps/driveabout/a/at;Lcom/google/android/maps/driveabout/a/a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/am;->b:Lcom/google/android/maps/driveabout/a/as;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/a/at;Lcom/google/android/maps/driveabout/a/a;)V
    .locals 4

    if-nez p2, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/a/am;->a(Lcom/google/android/maps/driveabout/a/a;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/am;->a:Lcom/google/android/maps/driveabout/a/au;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/au;->e()Lcom/google/android/maps/driveabout/a/at;

    move-result-object v0

    if-ne p1, v0, :cond_3

    iput-object p2, p0, Lcom/google/android/maps/driveabout/a/am;->c:Lcom/google/android/maps/driveabout/a/a;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/am;->b:Lcom/google/android/maps/driveabout/a/as;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/am;->c:Lcom/google/android/maps/driveabout/a/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/am;->d:Lcom/google/android/maps/driveabout/a/a;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/maps/driveabout/a/ai;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/maps/driveabout/a/a;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/a/am;->c:Lcom/google/android/maps/driveabout/a/a;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/a/am;->d:Lcom/google/android/maps/driveabout/a/a;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/a/ai;-><init>([Lcom/google/android/maps/driveabout/a/a;)V

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/a/am;->a(Lcom/google/android/maps/driveabout/a/a;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/am;->a:Lcom/google/android/maps/driveabout/a/au;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/au;->f()Lcom/google/android/maps/driveabout/a/at;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iput-object p2, p0, Lcom/google/android/maps/driveabout/a/am;->d:Lcom/google/android/maps/driveabout/a/a;

    goto :goto_0
.end method
