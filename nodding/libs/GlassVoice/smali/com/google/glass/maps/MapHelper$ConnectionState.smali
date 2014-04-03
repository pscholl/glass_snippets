.class final enum Lcom/google/glass/maps/MapHelper$ConnectionState;
.super Ljava/lang/Enum;
.source "MapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/maps/MapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ConnectionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/maps/MapHelper$ConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/maps/MapHelper$ConnectionState;

.field public static final enum CONNECTED:Lcom/google/glass/maps/MapHelper$ConnectionState;

.field public static final enum CONNECTING:Lcom/google/glass/maps/MapHelper$ConnectionState;

.field public static final enum DISCONNECTED:Lcom/google/glass/maps/MapHelper$ConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 125
    new-instance v0, Lcom/google/glass/maps/MapHelper$ConnectionState;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/maps/MapHelper$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/maps/MapHelper$ConnectionState;->DISCONNECTED:Lcom/google/glass/maps/MapHelper$ConnectionState;

    .line 126
    new-instance v0, Lcom/google/glass/maps/MapHelper$ConnectionState;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/maps/MapHelper$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/maps/MapHelper$ConnectionState;->CONNECTING:Lcom/google/glass/maps/MapHelper$ConnectionState;

    .line 127
    new-instance v0, Lcom/google/glass/maps/MapHelper$ConnectionState;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/maps/MapHelper$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/maps/MapHelper$ConnectionState;->CONNECTED:Lcom/google/glass/maps/MapHelper$ConnectionState;

    .line 124
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/maps/MapHelper$ConnectionState;

    sget-object v1, Lcom/google/glass/maps/MapHelper$ConnectionState;->DISCONNECTED:Lcom/google/glass/maps/MapHelper$ConnectionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/maps/MapHelper$ConnectionState;->CONNECTING:Lcom/google/glass/maps/MapHelper$ConnectionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/maps/MapHelper$ConnectionState;->CONNECTED:Lcom/google/glass/maps/MapHelper$ConnectionState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/glass/maps/MapHelper$ConnectionState;->$VALUES:[Lcom/google/glass/maps/MapHelper$ConnectionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/maps/MapHelper$ConnectionState;
    .locals 1
    .parameter "name"

    .prologue
    .line 124
    const-class v0, Lcom/google/glass/maps/MapHelper$ConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/MapHelper$ConnectionState;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/maps/MapHelper$ConnectionState;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/google/glass/maps/MapHelper$ConnectionState;->$VALUES:[Lcom/google/glass/maps/MapHelper$ConnectionState;

    invoke-virtual {v0}, [Lcom/google/glass/maps/MapHelper$ConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/maps/MapHelper$ConnectionState;

    return-object v0
.end method
