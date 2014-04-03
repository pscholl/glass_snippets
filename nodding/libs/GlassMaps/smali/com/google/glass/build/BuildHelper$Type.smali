.class public final enum Lcom/google/glass/build/BuildHelper$Type;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/build/BuildHelper$Type;

.field public static final enum ENG:Lcom/google/glass/build/BuildHelper$Type;

.field public static final enum UNKNOWN:Lcom/google/glass/build/BuildHelper$Type;

.field public static final enum USER:Lcom/google/glass/build/BuildHelper$Type;

.field public static final enum USERDEBUG:Lcom/google/glass/build/BuildHelper$Type;


# instance fields
.field private rawBuildType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/glass/build/BuildHelper$Type;

    const-string v1, "USER"

    const-string v2, "user"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/glass/build/BuildHelper$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/build/BuildHelper$Type;->USER:Lcom/google/glass/build/BuildHelper$Type;

    new-instance v0, Lcom/google/glass/build/BuildHelper$Type;

    const-string v1, "USERDEBUG"

    const-string v2, "userdebug"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/glass/build/BuildHelper$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/build/BuildHelper$Type;->USERDEBUG:Lcom/google/glass/build/BuildHelper$Type;

    new-instance v0, Lcom/google/glass/build/BuildHelper$Type;

    const-string v1, "ENG"

    const-string v2, "eng"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/glass/build/BuildHelper$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/build/BuildHelper$Type;->ENG:Lcom/google/glass/build/BuildHelper$Type;

    new-instance v0, Lcom/google/glass/build/BuildHelper$Type;

    const-string v1, "UNKNOWN"

    const-string v2, ""

    invoke-direct {v0, v1, v6, v2}, Lcom/google/glass/build/BuildHelper$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/build/BuildHelper$Type;->UNKNOWN:Lcom/google/glass/build/BuildHelper$Type;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/glass/build/BuildHelper$Type;

    sget-object v1, Lcom/google/glass/build/BuildHelper$Type;->USER:Lcom/google/glass/build/BuildHelper$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/build/BuildHelper$Type;->USERDEBUG:Lcom/google/glass/build/BuildHelper$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/build/BuildHelper$Type;->ENG:Lcom/google/glass/build/BuildHelper$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/build/BuildHelper$Type;->UNKNOWN:Lcom/google/glass/build/BuildHelper$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/glass/build/BuildHelper$Type;->$VALUES:[Lcom/google/glass/build/BuildHelper$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/glass/build/BuildHelper$Type;->rawBuildType:Ljava/lang/String;

    return-void
.end method

.method static getType(Ljava/lang/String;)Lcom/google/glass/build/BuildHelper$Type;
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/google/glass/build/BuildHelper$Type;->values()[Lcom/google/glass/build/BuildHelper$Type;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget-object v4, v0, Lcom/google/glass/build/BuildHelper$Type;->rawBuildType:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/glass/build/BuildHelper$Type;->UNKNOWN:Lcom/google/glass/build/BuildHelper$Type;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/build/BuildHelper$Type;
    .locals 1

    const-class v0, Lcom/google/glass/build/BuildHelper$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/build/BuildHelper$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/build/BuildHelper$Type;
    .locals 1

    sget-object v0, Lcom/google/glass/build/BuildHelper$Type;->$VALUES:[Lcom/google/glass/build/BuildHelper$Type;

    invoke-virtual {v0}, [Lcom/google/glass/build/BuildHelper$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/build/BuildHelper$Type;

    return-object v0
.end method
