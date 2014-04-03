.class final Lcom/google/android/maps/driveabout/a/p;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/p;->a:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/a/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/a/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/a/m;
    .locals 3

    new-instance v1, Lcom/google/android/maps/driveabout/a/o;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/p;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/a/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/maps/driveabout/a/m;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/a/m;

    invoke-direct {v1, v0}, Lcom/google/android/maps/driveabout/a/o;-><init>([Lcom/google/android/maps/driveabout/a/m;)V

    return-object v1
.end method

.method public final a(Lcom/google/android/maps/driveabout/a/m;)V
    .locals 2

    instance-of v0, p1, Lcom/google/android/maps/driveabout/a/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/p;->a:Ljava/util/ArrayList;

    check-cast p1, Lcom/google/android/maps/driveabout/a/o;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/a/o;->b()[Lcom/google/android/maps/driveabout/a/m;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
