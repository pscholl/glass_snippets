.class final Lcom/google/android/maps/driveabout/b/n;
.super Lcom/google/android/maps/driveabout/b/o;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/b/m;

.field private final c:I

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V
    .locals 1

    float-to-int v0, p2

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/b/m;IILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/b/n;->a:Lcom/google/android/maps/driveabout/b/m;

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/b/o;-><init>(I)V

    iput p3, p0, Lcom/google/android/maps/driveabout/b/n;->c:I

    iput-object p4, p0, Lcom/google/android/maps/driveabout/b/n;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/n;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/n;->a:Lcom/google/android/maps/driveabout/b/m;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/b/m;->a(Lcom/google/android/maps/driveabout/b/m;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/b/n;->c:I

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/n;->a:Lcom/google/android/maps/driveabout/b/m;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/b/m;->a(Lcom/google/android/maps/driveabout/b/m;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/b/n;->c:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/b/n;->d:Ljava/lang/String;

    aput-object v3, v2, v4

    aput-object p2, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
