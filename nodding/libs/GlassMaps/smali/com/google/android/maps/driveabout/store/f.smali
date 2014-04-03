.class final Lcom/google/android/maps/driveabout/store/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/store/bq;


# instance fields
.field final a:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/f;->a:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/e/av;[BIJJ)Lcom/google/android/maps/driveabout/e/au;
    .locals 2

    new-instance v0, Lcom/google/android/maps/driveabout/util/a;

    invoke-direct {v0, p2}, Lcom/google/android/maps/driveabout/util/a;-><init>([B)V

    invoke-virtual {v0, p3}, Lcom/google/android/maps/driveabout/util/a;->skipBytes(I)I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/f;->a:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    invoke-static {p1, v0, v1}, Lcom/google/android/maps/driveabout/e/n;->a(Lcom/google/android/maps/driveabout/e/av;Ljava/io/DataInput;Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;)Lcom/google/android/maps/driveabout/e/n;

    move-result-object v0

    return-object v0
.end method
