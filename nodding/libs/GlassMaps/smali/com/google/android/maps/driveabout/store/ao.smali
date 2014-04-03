.class final Lcom/google/android/maps/driveabout/store/ao;
.super Lcom/google/android/maps/driveabout/e/o;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/e/p;Lcom/google/android/maps/driveabout/store/a;)V
    .locals 6

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/e/o;-><init>(Lcom/google/android/maps/driveabout/e/p;Ljava/util/List;IZLcom/google/android/maps/driveabout/store/a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/e/p;Lcom/google/android/maps/driveabout/store/a;Lcom/google/android/maps/driveabout/store/an;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/store/ao;-><init>(Lcom/google/android/maps/driveabout/e/p;Lcom/google/android/maps/driveabout/store/a;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[NotFoundBuilding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/store/ao;->a()Lcom/google/android/maps/driveabout/e/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
