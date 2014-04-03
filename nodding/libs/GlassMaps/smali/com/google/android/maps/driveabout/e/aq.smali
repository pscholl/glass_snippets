.class public final Lcom/google/android/maps/driveabout/e/aq;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/aq;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static a()Lcom/google/android/maps/driveabout/e/ap;
    .locals 1

    invoke-static {}, Lcom/google/android/maps/driveabout/e/ap;->a()Lcom/google/android/maps/driveabout/e/ap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/DataInput;I)Lcom/google/android/maps/driveabout/e/aq;
    .locals 5

    new-instance v1, Lcom/google/android/maps/driveabout/e/aq;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/e/aq;-><init>()V

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, v1, Lcom/google/android/maps/driveabout/e/aq;->a:Ljava/util/ArrayList;

    invoke-static {v0, p0, p1}, Lcom/google/android/maps/driveabout/e/ap;->a(ILjava/io/DataInput;I)Lcom/google/android/maps/driveabout/e/ap;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a(I)Lcom/google/android/maps/driveabout/e/ap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/aq;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-static {}, Lcom/google/android/maps/driveabout/e/ap;->a()Lcom/google/android/maps/driveabout/e/ap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/aq;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/ap;

    goto :goto_0
.end method
