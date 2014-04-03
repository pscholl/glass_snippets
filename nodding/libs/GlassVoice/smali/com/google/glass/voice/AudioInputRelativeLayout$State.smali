.class public final enum Lcom/google/glass/voice/AudioInputRelativeLayout$State;
.super Ljava/lang/Enum;
.source "AudioInputRelativeLayout.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/AudioInputRelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/voice/AudioInputRelativeLayout$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/voice/AudioInputRelativeLayout$State;

.field public static final enum LISTENING:Lcom/google/glass/voice/AudioInputRelativeLayout$State;

.field public static final enum MIC_INITIALIZING:Lcom/google/glass/voice/AudioInputRelativeLayout$State;

.field public static final enum NOT_LISTENING:Lcom/google/glass/voice/AudioInputRelativeLayout$State;

.field public static final enum RECOGNIZING:Lcom/google/glass/voice/AudioInputRelativeLayout$State;

.field public static final enum RECORDING:Lcom/google/glass/voice/AudioInputRelativeLayout$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    const-string v1, "NOT_LISTENING"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/voice/AudioInputRelativeLayout$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/AudioInputRelativeLayout$State;->NOT_LISTENING:Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    .line 32
    new-instance v0, Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    const-string v1, "MIC_INITIALIZING"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/voice/AudioInputRelativeLayout$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/AudioInputRelativeLayout$State;->MIC_INITIALIZING:Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    .line 33
    new-instance v0, Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    const-string v1, "LISTENING"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/voice/AudioInputRelativeLayout$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/AudioInputRelativeLayout$State;->LISTENING:Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    .line 34
    new-instance v0, Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    const-string v1, "RECORDING"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/voice/AudioInputRelativeLayout$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/AudioInputRelativeLayout$State;->RECORDING:Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    .line 35
    new-instance v0, Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    const-string v1, "RECOGNIZING"

    invoke-direct {v0, v1, v6}, Lcom/google/glass/voice/AudioInputRelativeLayout$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/AudioInputRelativeLayout$State;->RECOGNIZING:Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    .line 29
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    sget-object v1, Lcom/google/glass/voice/AudioInputRelativeLayout$State;->NOT_LISTENING:Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/voice/AudioInputRelativeLayout$State;->MIC_INITIALIZING:Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/voice/AudioInputRelativeLayout$State;->LISTENING:Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/voice/AudioInputRelativeLayout$State;->RECORDING:Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/voice/AudioInputRelativeLayout$State;->RECOGNIZING:Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/glass/voice/AudioInputRelativeLayout$State;->$VALUES:[Lcom/google/glass/voice/AudioInputRelativeLayout$State;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/voice/AudioInputRelativeLayout$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 29
    const-class v0, Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/voice/AudioInputRelativeLayout$State;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/glass/voice/AudioInputRelativeLayout$State;->$VALUES:[Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    invoke-virtual {v0}, [Lcom/google/glass/voice/AudioInputRelativeLayout$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    return-object v0
.end method
