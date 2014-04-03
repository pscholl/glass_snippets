.class public final enum Lcom/google/glass/voice/network/SpeechException$Type;
.super Ljava/lang/Enum;
.source "SpeechException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/network/SpeechException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/voice/network/SpeechException$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/voice/network/SpeechException$Type;

.field public static final enum AUDIO_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

.field public static final enum NETWORK_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

.field public static final enum NO_MATCH:Lcom/google/glass/voice/network/SpeechException$Type;

.field public static final enum SERVER:Lcom/google/glass/voice/network/SpeechException$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/google/glass/voice/network/SpeechException$Type;

    const-string v1, "AUDIO_RECOGNIZE"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/voice/network/SpeechException$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/network/SpeechException$Type;->AUDIO_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

    .line 16
    new-instance v0, Lcom/google/glass/voice/network/SpeechException$Type;

    const-string v1, "NETWORK_RECOGNIZE"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/voice/network/SpeechException$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/network/SpeechException$Type;->NETWORK_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

    .line 19
    new-instance v0, Lcom/google/glass/voice/network/SpeechException$Type;

    const-string v1, "NO_MATCH"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/voice/network/SpeechException$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/network/SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/SpeechException$Type;

    .line 21
    new-instance v0, Lcom/google/glass/voice/network/SpeechException$Type;

    const-string v1, "SERVER"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/voice/network/SpeechException$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/network/SpeechException$Type;->SERVER:Lcom/google/glass/voice/network/SpeechException$Type;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/glass/voice/network/SpeechException$Type;

    sget-object v1, Lcom/google/glass/voice/network/SpeechException$Type;->AUDIO_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/voice/network/SpeechException$Type;->NETWORK_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/voice/network/SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/SpeechException$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/voice/network/SpeechException$Type;->SERVER:Lcom/google/glass/voice/network/SpeechException$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/glass/voice/network/SpeechException$Type;->$VALUES:[Lcom/google/glass/voice/network/SpeechException$Type;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/voice/network/SpeechException$Type;
    .locals 1
    .parameter "name"

    .prologue
    .line 11
    const-class v0, Lcom/google/glass/voice/network/SpeechException$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/network/SpeechException$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/voice/network/SpeechException$Type;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/google/glass/voice/network/SpeechException$Type;->$VALUES:[Lcom/google/glass/voice/network/SpeechException$Type;

    invoke-virtual {v0}, [Lcom/google/glass/voice/network/SpeechException$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/voice/network/SpeechException$Type;

    return-object v0
.end method
