.class public final enum Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

.field public static final enum NORMAL:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

.field public static final enum PREFETCH_AREA:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

.field public static final enum PREFETCH_OFFLINE_MAP:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

.field public static final enum PREFETCH_ROUTE:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

.field public static final enum UNKNOWN:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x1

    new-instance v0, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    const-string v1, "UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->UNKNOWN:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    new-instance v0, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->NORMAL:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    new-instance v0, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    const-string v1, "PREFETCH_OFFLINE_MAP"

    invoke-direct {v0, v1, v6, v4}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->PREFETCH_OFFLINE_MAP:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    new-instance v0, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    const-string v1, "PREFETCH_ROUTE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->PREFETCH_ROUTE:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    new-instance v0, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    const-string v1, "PREFETCH_AREA"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->PREFETCH_AREA:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    sget-object v1, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->UNKNOWN:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->NORMAL:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->PREFETCH_OFFLINE_MAP:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->PREFETCH_ROUTE:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->PREFETCH_AREA:Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->$VALUES:[Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;
    .locals 1

    const-class v0, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->$VALUES:[Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    invoke-virtual {v0}, [Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore$FetchType;->value:I

    return v0
.end method
