.class public final Lcom/google/android/maps/driveabout/a/au;
.super Lcom/google/android/maps/driveabout/a/at;


# instance fields
.field private a:Lcom/google/android/maps/driveabout/a/at;

.field private b:Lcom/google/android/maps/driveabout/a/at;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/a/at;Lcom/google/android/maps/driveabout/a/at;)V
    .locals 6

    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/a/at;->c()I

    move-result v0

    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/a/at;->d()Lcom/google/android/maps/driveabout/nav/i;

    move-result-object v1

    sget v2, Lcom/google/glass/navlib/p;->da_prepare_event:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/a/at;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/a/at;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/a/at;->b()Lcom/google/android/maps/driveabout/a/m;

    move-result-object v3

    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/a/at;->b()Lcom/google/android/maps/driveabout/a/m;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/maps/driveabout/a/m;->a(Lcom/google/android/maps/driveabout/a/m;Lcom/google/android/maps/driveabout/a/m;)Lcom/google/android/maps/driveabout/a/m;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/a/at;-><init>(ILcom/google/android/maps/driveabout/nav/i;Ljava/lang/CharSequence;Lcom/google/android/maps/driveabout/a/m;)V

    iput-object p2, p0, Lcom/google/android/maps/driveabout/a/au;->a:Lcom/google/android/maps/driveabout/a/at;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/a/au;->b:Lcom/google/android/maps/driveabout/a/at;

    return-void
.end method


# virtual methods
.method public final e()Lcom/google/android/maps/driveabout/a/at;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/au;->a:Lcom/google/android/maps/driveabout/a/at;

    return-object v0
.end method

.method public final f()Lcom/google/android/maps/driveabout/a/at;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/au;->b:Lcom/google/android/maps/driveabout/a/at;

    return-object v0
.end method
