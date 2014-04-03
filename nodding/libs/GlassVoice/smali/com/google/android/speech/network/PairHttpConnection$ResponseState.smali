.class final enum Lcom/google/android/speech/network/PairHttpConnection$ResponseState;
.super Ljava/lang/Enum;
.source "PairHttpConnection.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/network/PairHttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ResponseState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/speech/network/PairHttpConnection$ResponseState;",
        ">;"
    }
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

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v0, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->UNKNOWN:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    .line 74
    new-instance v0, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    const-string v1, "UP"

    invoke-direct {v0, v1, v3}, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->UP:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    .line 77
    new-instance v0, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v4}, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->DOWN:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    .line 80
    new-instance v0, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    const-string v1, "DOWN_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->DOWN_ERROR:Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    .line 68
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
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/speech/network/PairHttpConnection$ResponseState;
    .locals 1
    .parameter "name"

    .prologue
    .line 68
    const-class v0, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/speech/network/PairHttpConnection$ResponseState;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->$VALUES:[Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    invoke-virtual {v0}, [Lcom/google/android/speech/network/PairHttpConnection$ResponseState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/speech/network/PairHttpConnection$ResponseState;

    return-object v0
.end method
