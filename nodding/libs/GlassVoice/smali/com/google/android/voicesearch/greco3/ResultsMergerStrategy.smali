.class public final enum Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;
.super Ljava/lang/Enum;
.source "ResultsMergerStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;

.field public static final enum EMBEDDED_IGNORE_NETWORK:Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;

.field public static final enum EMBEDDED_MERGE_NETWORK:Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;

.field public static final enum EMBEDDED_ONLY:Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;

.field public static final enum PREFER_NETWORK:Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;

    const-string v1, "PREFER_NETWORK"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;->PREFER_NETWORK:Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;

    .line 10
    new-instance v0, Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;

    const-string v1, "EMBEDDED_MERGE_NETWORK"

    invoke-direct {v0, v1, v3}, Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;->EMBEDDED_MERGE_NETWORK:Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;

    .line 13
    new-instance v0, Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;

    const-string v1, "EMBEDDED_IGNORE_NETWORK"

    invoke-direct {v0, v1, v4}, Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;->EMBEDDED_IGNORE_NETWORK:Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;

    .line 15
    new-instance v0, Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;

    const-string v1, "EMBEDDED_ONLY"

    invoke-direct {v0, v1, v5}, Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;->EMBEDDED_ONLY:Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;

    sget-object v1, Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;->PREFER_NETWORK:Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;->EMBEDDED_MERGE_NETWORK:Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;->EMBEDDED_IGNORE_NETWORK:Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;->EMBEDDED_ONLY:Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;->$VALUES:[Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;
    .locals 1
    .parameter "name"

    .prologue
    .line 3
    const-class v0, Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;

    return-object v0
.end method

.method public static values()[Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;->$VALUES:[Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;

    invoke-virtual {v0}, [Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/voicesearch/greco3/ResultsMergerStrategy;

    return-object v0
.end method
