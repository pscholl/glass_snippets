.class public abstract Lcom/google/android/maps/driveabout/f/h;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Landroid/content/Context;

.field private final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/f/h;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/f/h;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public final a(I)Lcom/google/android/maps/driveabout/nav/aj;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/h;->b:Ljava/util/List;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/aj;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/aj;->a()I

    move-result v3

    if-ne v3, p1, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public final d()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/h;->b:Ljava/util/List;

    return-object v0
.end method
