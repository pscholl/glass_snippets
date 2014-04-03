.class final enum Lcom/google/glass/location/GlassLocationManager$ConnectionState;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/location/GlassLocationManager$ConnectionState;

.field public static final enum CONNECTED:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

.field public static final enum CONNECTING:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

.field public static final enum DISCONNECTED:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

.field public static final enum DISCONNECTING:Lcom/google/glass/location/GlassLocationManager$ConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/location/GlassLocationManager$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/location/GlassLocationManager$ConnectionState;->DISCONNECTED:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    new-instance v0, Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/location/GlassLocationManager$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/location/GlassLocationManager$ConnectionState;->CONNECTING:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    new-instance v0, Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/location/GlassLocationManager$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/location/GlassLocationManager$ConnectionState;->CONNECTED:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    new-instance v0, Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    const-string v1, "DISCONNECTING"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/location/GlassLocationManager$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/location/GlassLocationManager$ConnectionState;->DISCONNECTING:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    sget-object v1, Lcom/google/glass/location/GlassLocationManager$ConnectionState;->DISCONNECTED:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/location/GlassLocationManager$ConnectionState;->CONNECTING:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/location/GlassLocationManager$ConnectionState;->CONNECTED:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/location/GlassLocationManager$ConnectionState;->DISCONNECTING:Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/glass/location/GlassLocationManager$ConnectionState;->$VALUES:[Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/location/GlassLocationManager$ConnectionState;
    .locals 1

    const-class v0, Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/location/GlassLocationManager$ConnectionState;
    .locals 1

    sget-object v0, Lcom/google/glass/location/GlassLocationManager$ConnectionState;->$VALUES:[Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    invoke-virtual {v0}, [Lcom/google/glass/location/GlassLocationManager$ConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/location/GlassLocationManager$ConnectionState;

    return-object v0
.end method
