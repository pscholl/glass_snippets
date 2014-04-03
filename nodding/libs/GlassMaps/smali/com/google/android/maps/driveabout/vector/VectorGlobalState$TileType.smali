.class public final enum Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

.field public static final enum BASE:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

.field public static final enum BASE_BICYCLING:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

.field public static final enum INAKA:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

.field public static final enum LABELS_ONLY:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

.field public static final enum LAYER:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

.field public static final enum PERSONALIZED_SMARTMAPS_MODIFIER:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

.field public static final enum ROAD_GRAPH:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

.field public static final enum SATELLITE:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

.field public static final enum SATELLITE_BICYCLING:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

.field public static final enum TERRAIN:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

.field public static final enum TERRAIN_BICYCLING:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

.field public static final enum TRAFFIC:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

.field public static final enum TRANSIT:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;


# instance fields
.field public final mIsModifier:Z

.field public final mLoggingId:I

.field public final mRequestType:I

.field public final mSuffix:Ljava/lang/String;

.field public final mTileVariant:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    const-string v1, "BASE"

    const/4 v2, 0x0

    const/16 v3, 0xa

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->BASE:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    const-string v1, "SATELLITE"

    const/4 v2, 0x1

    const/4 v3, 0x3

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->SATELLITE:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    const-string v1, "TERRAIN"

    const/4 v2, 0x2

    const/16 v3, 0xc

    const-string v4, "_ter"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->TERRAIN:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    const-string v1, "TRAFFIC"

    const/4 v2, 0x3

    const/4 v3, 0x4

    const-string v4, "_traf"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->TRAFFIC:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    const-string v1, "LAYER"

    const/4 v2, 0x4

    const/16 v3, 0x8

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->LAYER:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    const-string v1, "ROAD_GRAPH"

    const/4 v2, 0x5

    const/16 v3, 0xb

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->ROAD_GRAPH:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    const-string v1, "BASE_BICYCLING"

    const/4 v2, 0x6

    const/4 v3, 0x2

    const/16 v4, 0x80

    const-string v5, "_bas_bic"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;-><init>(Ljava/lang/String;IIILjava/lang/String;Z)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->BASE_BICYCLING:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    const-string v1, "TERRAIN_BICYCLING"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x80

    const-string v5, "_ter_bic"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;-><init>(Ljava/lang/String;IIILjava/lang/String;Z)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->TERRAIN_BICYCLING:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    const-string v1, "SATELLITE_BICYCLING"

    const/16 v2, 0x8

    const/4 v3, 0x6

    const/16 v4, 0x80

    const-string v5, "_hy_bic"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;-><init>(Ljava/lang/String;IIILjava/lang/String;Z)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->SATELLITE_BICYCLING:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    const-string v1, "TRANSIT"

    const/16 v2, 0x9

    const/16 v3, 0xd

    const-string v4, "_tran"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->TRANSIT:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    const-string v1, "INAKA"

    const/16 v2, 0xa

    const/16 v3, 0xe

    const-string v4, "_inaka"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->INAKA:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    const-string v1, "LABELS_ONLY"

    const/16 v2, 0xb

    const/16 v3, 0xf

    const-string v4, "_labl"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->LABELS_ONLY:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    const-string v1, "PERSONALIZED_SMARTMAPS_MODIFIER"

    const/16 v2, 0xc

    const/16 v3, 0x10

    const/4 v4, 0x0

    const-string v5, "_psm"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;-><init>(Ljava/lang/String;IIILjava/lang/String;Z)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->PERSONALIZED_SMARTMAPS_MODIFIER:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->BASE:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->SATELLITE:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->TERRAIN:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->TRAFFIC:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->LAYER:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->ROAD_GRAPH:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->BASE_BICYCLING:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->TERRAIN_BICYCLING:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->SATELLITE_BICYCLING:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->TRANSIT:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->INAKA:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->LABELS_ONLY:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->PERSONALIZED_SMARTMAPS_MODIFIER:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->$VALUES:[Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->values()[Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Currently maximum 32 tile types allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;Z)V
    .locals 2

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->mRequestType:I

    iput p4, p0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->mTileVariant:I

    iput-object p5, p0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->mSuffix:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->mIsModifier:Z

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->mRequestType:I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->mTileVariant:I

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->mLoggingId:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;-><init>(Ljava/lang/String;IIILjava/lang/String;Z)V

    return-void
.end method

.method public static getByTileFlags(I)Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;
    .locals 6

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->values()[Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->mRequestType:I

    iget v5, v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->mTileVariant:I

    add-int/2addr v4, v5

    if-ne v4, p0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;
    .locals 1

    const-class v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->$VALUES:[Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    invoke-virtual {v0}, [Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    return-object v0
.end method
