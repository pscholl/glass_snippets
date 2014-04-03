.class public final enum Lcom/google/android/maps/driveabout/nav/DataType$Type;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/maps/driveabout/nav/DataType$Type;

.field public static final enum DESTINATION_TYPE:Lcom/google/android/maps/driveabout/nav/DataType$Type;

.field public static final enum STEP_TYPE:Lcom/google/android/maps/driveabout/nav/DataType$Type;

.field public static final enum TRIP_TYPE:Lcom/google/android/maps/driveabout/nav/DataType$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/nav/DataType$Type;

    const-string v1, "TRIP_TYPE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/nav/DataType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/driveabout/nav/DataType$Type;->TRIP_TYPE:Lcom/google/android/maps/driveabout/nav/DataType$Type;

    new-instance v0, Lcom/google/android/maps/driveabout/nav/DataType$Type;

    const-string v1, "STEP_TYPE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/maps/driveabout/nav/DataType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/driveabout/nav/DataType$Type;->STEP_TYPE:Lcom/google/android/maps/driveabout/nav/DataType$Type;

    new-instance v0, Lcom/google/android/maps/driveabout/nav/DataType$Type;

    const-string v1, "DESTINATION_TYPE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/maps/driveabout/nav/DataType$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/driveabout/nav/DataType$Type;->DESTINATION_TYPE:Lcom/google/android/maps/driveabout/nav/DataType$Type;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/maps/driveabout/nav/DataType$Type;

    sget-object v1, Lcom/google/android/maps/driveabout/nav/DataType$Type;->TRIP_TYPE:Lcom/google/android/maps/driveabout/nav/DataType$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/maps/driveabout/nav/DataType$Type;->STEP_TYPE:Lcom/google/android/maps/driveabout/nav/DataType$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/maps/driveabout/nav/DataType$Type;->DESTINATION_TYPE:Lcom/google/android/maps/driveabout/nav/DataType$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/maps/driveabout/nav/DataType$Type;->$VALUES:[Lcom/google/android/maps/driveabout/nav/DataType$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/maps/driveabout/nav/DataType$Type;
    .locals 1

    const-class v0, Lcom/google/android/maps/driveabout/nav/DataType$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/DataType$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/android/maps/driveabout/nav/DataType$Type;
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/nav/DataType$Type;->$VALUES:[Lcom/google/android/maps/driveabout/nav/DataType$Type;

    invoke-virtual {v0}, [Lcom/google/android/maps/driveabout/nav/DataType$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/nav/DataType$Type;

    return-object v0
.end method
