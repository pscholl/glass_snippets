.class final enum Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;
.super Ljava/lang/Enum;
.source "VorbisStreamProducer.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VorbisStreamProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "VorbisStreamState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

.field public static final enum DONE:Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

.field public static final enum ENCODER_CLOSED:Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

.field public static final enum ENCODER_INITIALIZED:Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

.field public static final enum UNINITIALIZED:Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 138
    new-instance v0, Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

    const-string v1, "UNINITIALIZED"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;->UNINITIALIZED:Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

    .line 139
    new-instance v0, Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

    const-string v1, "ENCODER_INITIALIZED"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;->ENCODER_INITIALIZED:Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

    .line 140
    new-instance v0, Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

    const-string v1, "ENCODER_CLOSED"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;->ENCODER_CLOSED:Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

    .line 141
    new-instance v0, Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;->DONE:Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

    .line 136
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

    sget-object v1, Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;->UNINITIALIZED:Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;->ENCODER_INITIALIZED:Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;->ENCODER_CLOSED:Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;->DONE:Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;->$VALUES:[Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

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
    .line 137
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;
    .locals 1
    .parameter "name"

    .prologue
    .line 136
    const-class v0, Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;->$VALUES:[Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

    invoke-virtual {v0}, [Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/voice/VorbisStreamProducer$VorbisStreamState;

    return-object v0
.end method
