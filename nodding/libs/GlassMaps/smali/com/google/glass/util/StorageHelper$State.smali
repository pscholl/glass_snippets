.class public final enum Lcom/google/glass/util/StorageHelper$State;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/util/StorageHelper$State;

.field public static final enum FULL:Lcom/google/glass/util/StorageHelper$State;

.field public static final enum GOOD:Lcom/google/glass/util/StorageHelper$State;

.field public static final enum LOW:Lcom/google/glass/util/StorageHelper$State;

.field public static final enum MEDIUM:Lcom/google/glass/util/StorageHelper$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/glass/util/StorageHelper$State;

    const-string v1, "FULL"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/util/StorageHelper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/util/StorageHelper$State;->FULL:Lcom/google/glass/util/StorageHelper$State;

    new-instance v0, Lcom/google/glass/util/StorageHelper$State;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/util/StorageHelper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/util/StorageHelper$State;->LOW:Lcom/google/glass/util/StorageHelper$State;

    new-instance v0, Lcom/google/glass/util/StorageHelper$State;

    const-string v1, "MEDIUM"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/util/StorageHelper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/util/StorageHelper$State;->MEDIUM:Lcom/google/glass/util/StorageHelper$State;

    new-instance v0, Lcom/google/glass/util/StorageHelper$State;

    const-string v1, "GOOD"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/util/StorageHelper$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/util/StorageHelper$State;->GOOD:Lcom/google/glass/util/StorageHelper$State;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/glass/util/StorageHelper$State;

    sget-object v1, Lcom/google/glass/util/StorageHelper$State;->FULL:Lcom/google/glass/util/StorageHelper$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/util/StorageHelper$State;->LOW:Lcom/google/glass/util/StorageHelper$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/util/StorageHelper$State;->MEDIUM:Lcom/google/glass/util/StorageHelper$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/util/StorageHelper$State;->GOOD:Lcom/google/glass/util/StorageHelper$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/glass/util/StorageHelper$State;->$VALUES:[Lcom/google/glass/util/StorageHelper$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/util/StorageHelper$State;
    .locals 1

    const-class v0, Lcom/google/glass/util/StorageHelper$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/StorageHelper$State;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/util/StorageHelper$State;
    .locals 1

    sget-object v0, Lcom/google/glass/util/StorageHelper$State;->$VALUES:[Lcom/google/glass/util/StorageHelper$State;

    invoke-virtual {v0}, [Lcom/google/glass/util/StorageHelper$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/util/StorageHelper$State;

    return-object v0
.end method
