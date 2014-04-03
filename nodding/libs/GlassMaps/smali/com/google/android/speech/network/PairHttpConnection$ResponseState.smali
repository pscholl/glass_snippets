.class final enum Lcom/google/android/speech/network/PairHttpConnection$ResponseState;
.super Ljava/lang/Enum;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

.field public static final enum DOWN:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

.field public static final enum DOWN_ERROR:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

.field public static final enum UNKNOWN:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

.field public static final enum UP:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->UNKNOWN:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    new-instance v0, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    const-string v1, "UP"

    invoke-direct {v0, v1, v3}, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->UP:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    new-instance v0, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v4}, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->DOWN:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    new-instance v0, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    const-string v1, "DOWN_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->DOWN_ERROR:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    sget-object v1, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->UNKNOWN:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->UP:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->DOWN:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->DOWN_ERROR:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->$VALUES:[Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/speech/network/PairHttpConnection$ResponseState;
    .locals 1

    const-class v0, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/speech/network/PairHttpConnection$ResponseState;
    .locals 1

    sget-object v0, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->$VALUES:[Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    invoke-virtual {v0}, [Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    return-object v0
.end method
