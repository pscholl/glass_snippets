.class final Lcom/google/android/maps/driveabout/store/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/store/bq;


# instance fields
.field final a:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/h;->a:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/e/av;[BIJJ)Lcom/google/android/maps/driveabout/e/au;
    .locals 8

    iget-object v3, p0, Lcom/google/android/maps/driveabout/store/h;->a:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-static/range {v0 .. v7}, Lcom/google/android/maps/driveabout/e/bd;->a(Lcom/google/android/maps/driveabout/e/av;[BILcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;JJ)Lcom/google/android/maps/driveabout/e/bd;

    move-result-object v0

    return-object v0
.end method
