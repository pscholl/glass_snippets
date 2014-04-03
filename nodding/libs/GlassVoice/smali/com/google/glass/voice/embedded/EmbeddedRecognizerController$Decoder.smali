.class final enum Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;
.super Ljava/lang/Enum;
.source "EmbeddedRecognizerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Decoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

.field public static final enum DYN_1:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

.field public static final enum DYN_2:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

.field public static final enum DYN_3:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

.field public static final enum DYN_4:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

.field public static final enum DYN_5:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

.field public static final enum GUARD:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

.field public static final enum MENU:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

.field public static final enum NONE:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    new-instance v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    const-string v1, "GUARD"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->GUARD:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    new-instance v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    const-string v1, "MENU"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->MENU:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    new-instance v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    const-string v1, "DYN_1"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->DYN_1:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    new-instance v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    const-string v1, "DYN_2"

    invoke-direct {v0, v1, v6}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->DYN_2:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    new-instance v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    const-string v1, "DYN_3"

    invoke-direct {v0, v1, v7}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->DYN_3:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    new-instance v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    const-string v1, "DYN_4"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->DYN_4:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    new-instance v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    const-string v1, "DYN_5"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->DYN_5:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    new-instance v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    const-string v1, "NONE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->NONE:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    .line 48
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    sget-object v1, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->GUARD:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->MENU:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->DYN_1:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->DYN_2:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->DYN_3:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->DYN_4:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->DYN_5:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->NONE:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->$VALUES:[Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;
    .locals 1
    .parameter "name"

    .prologue
    .line 48
    const-class v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->$VALUES:[Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    invoke-virtual {v0}, [Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    return-object v0
.end method
