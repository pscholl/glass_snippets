.class public final Lcom/google/glass/maps/c/m;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/google/android/maps/driveabout/nav/ah;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ah;->w()Lcom/google/android/maps/driveabout/nav/aj;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ah;->w()Lcom/google/android/maps/driveabout/nav/aj;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ah;->p()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/maps/c/o;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ah;->q()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/maps/c/o;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
