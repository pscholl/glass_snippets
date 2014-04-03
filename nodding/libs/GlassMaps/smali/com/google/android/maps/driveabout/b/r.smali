.class public final Lcom/google/android/maps/driveabout/b/r;
.super Ljava/lang/Object;


# instance fields
.field private a:[Lcom/google/android/maps/driveabout/nav/ao;

.field private b:Lcom/google/android/maps/driveabout/nav/ao;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:[Lcom/google/android/maps/driveabout/nav/b;

.field private f:Landroid/content/Intent;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/android/maps/driveabout/nav/ao;Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->d()Lcom/google/android/maps/driveabout/e/m;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/b/q;->a(Lcom/google/android/maps/driveabout/e/m;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->e()Lcom/google/android/maps/driveabout/nav/ap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ap;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, p5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_3
    return-void
.end method


# virtual methods
.method final a()Landroid/net/Uri;
    .locals 7

    const/4 v6, 0x1

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "google.navigation"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/r;->a:[Lcom/google/android/maps/driveabout/nav/ao;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/r;->a:[Lcom/google/android/maps/driveabout/nav/ao;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/ao;->d()Lcom/google/android/maps/driveabout/e/m;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "altvia"

    invoke-static {v2}, Lcom/google/android/maps/driveabout/b/q;->a(Lcom/google/android/maps/driveabout/e/m;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/r;->a:[Lcom/google/android/maps/driveabout/nav/ao;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/r;->a:[Lcom/google/android/maps/driveabout/nav/ao;

    aget-object v0, v2, v0

    const-string v2, "q"

    const-string v3, "ll"

    const-string v4, "title"

    const-string v5, "token"

    invoke-static/range {v0 .. v5}, Lcom/google/android/maps/driveabout/b/r;->a(Lcom/google/android/maps/driveabout/nav/ao;Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/r;->b:Lcom/google/android/maps/driveabout/nav/ao;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/r;->b:Lcom/google/android/maps/driveabout/nav/ao;

    const-string v2, "s"

    const-string v3, "sll"

    const-string v4, "stitle"

    const-string v5, "stoken"

    invoke-static/range {v0 .. v5}, Lcom/google/android/maps/driveabout/b/r;->a(Lcom/google/android/maps/driveabout/nav/ao;Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget v0, p0, Lcom/google/android/maps/driveabout/b/r;->c:I

    if-nez v0, :cond_9

    const-string v0, "mode"

    const-string v2, "d"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/r;->d:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "entry"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/r;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/r;->e:[Lcom/google/android/maps/driveabout/nav/b;

    if-eqz v0, :cond_6

    const-string v0, "opt"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/r;->e:[Lcom/google/android/maps/driveabout/nav/b;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/b/q;->a([Lcom/google/android/maps/driveabout/nav/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/r;->f:Landroid/content/Intent;

    if-eqz v0, :cond_7

    const-string v0, "r"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/r;->f:Landroid/content/Intent;

    invoke-virtual {v2, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/b/r;->g:Z

    if-eqz v0, :cond_8

    const-string v0, "goff"

    const-string v2, "true"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_8
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_9
    iget v0, p0, Lcom/google/android/maps/driveabout/b/r;->c:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_a

    const-string v0, "mode"

    const-string v2, "w"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    :cond_a
    iget v0, p0, Lcom/google/android/maps/driveabout/b/r;->c:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_b

    const-string v0, "mode"

    const-string v2, "b"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    :cond_b
    iget v0, p0, Lcom/google/android/maps/driveabout/b/r;->c:I

    if-ne v0, v6, :cond_4

    const-string v0, "mode"

    const-string v2, "r"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1
.end method

.method final a(I)Lcom/google/android/maps/driveabout/b/r;
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/b/r;->c:I

    return-object p0
.end method

.method final a(Lcom/google/android/maps/driveabout/nav/ao;)Lcom/google/android/maps/driveabout/b/r;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/maps/driveabout/nav/ao;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/r;->a:[Lcom/google/android/maps/driveabout/nav/ao;

    return-object p0
.end method

.method final a([Lcom/google/android/maps/driveabout/nav/ao;)Lcom/google/android/maps/driveabout/b/r;
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/b/r;->a:[Lcom/google/android/maps/driveabout/nav/ao;

    return-object p0
.end method

.method final a([Lcom/google/android/maps/driveabout/nav/b;)Lcom/google/android/maps/driveabout/b/r;
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/b/r;->e:[Lcom/google/android/maps/driveabout/nav/b;

    return-object p0
.end method

.method final b(Lcom/google/android/maps/driveabout/nav/ao;)Lcom/google/android/maps/driveabout/b/r;
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/b/r;->b:Lcom/google/android/maps/driveabout/nav/ao;

    return-object p0
.end method
