.class public final enum Lcom/google/glass/voice/VoiceConfig$Type;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/voice/VoiceConfig$Type;

.field public static final enum DICTATION:Lcom/google/glass/voice/VoiceConfig$Type;

.field public static final enum HOTWORD:Lcom/google/glass/voice/VoiceConfig$Type;

.field public static final enum NONE:Lcom/google/glass/voice/VoiceConfig$Type;

.field public static final enum SEARCH:Lcom/google/glass/voice/VoiceConfig$Type;


# instance fields
.field final openEnded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/glass/voice/VoiceConfig$Type;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/glass/voice/VoiceConfig$Type;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig$Type;->NONE:Lcom/google/glass/voice/VoiceConfig$Type;

    new-instance v0, Lcom/google/glass/voice/VoiceConfig$Type;

    const-string v1, "SEARCH"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/glass/voice/VoiceConfig$Type;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig$Type;->SEARCH:Lcom/google/glass/voice/VoiceConfig$Type;

    new-instance v0, Lcom/google/glass/voice/VoiceConfig$Type;

    const-string v1, "DICTATION"

    invoke-direct {v0, v1, v4, v3}, Lcom/google/glass/voice/VoiceConfig$Type;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig$Type;->DICTATION:Lcom/google/glass/voice/VoiceConfig$Type;

    new-instance v0, Lcom/google/glass/voice/VoiceConfig$Type;

    const-string v1, "HOTWORD"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/glass/voice/VoiceConfig$Type;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig$Type;->HOTWORD:Lcom/google/glass/voice/VoiceConfig$Type;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/glass/voice/VoiceConfig$Type;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig$Type;->NONE:Lcom/google/glass/voice/VoiceConfig$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/voice/VoiceConfig$Type;->SEARCH:Lcom/google/glass/voice/VoiceConfig$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/voice/VoiceConfig$Type;->DICTATION:Lcom/google/glass/voice/VoiceConfig$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/voice/VoiceConfig$Type;->HOTWORD:Lcom/google/glass/voice/VoiceConfig$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/glass/voice/VoiceConfig$Type;->$VALUES:[Lcom/google/glass/voice/VoiceConfig$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/google/glass/voice/VoiceConfig$Type;->openEnded:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig$Type;
    .locals 1

    const-class v0, Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceConfig$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/voice/VoiceConfig$Type;
    .locals 1

    sget-object v0, Lcom/google/glass/voice/VoiceConfig$Type;->$VALUES:[Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-virtual {v0}, [Lcom/google/glass/voice/VoiceConfig$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/voice/VoiceConfig$Type;

    return-object v0
.end method


# virtual methods
.method public final isOpenEnded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceConfig$Type;->openEnded:Z

    return v0
.end method
