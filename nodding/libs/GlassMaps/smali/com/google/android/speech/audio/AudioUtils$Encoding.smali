.class public final enum Lcom/google/android/speech/audio/AudioUtils$Encoding;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/speech/audio/AudioUtils$Encoding;

.field public static final enum AMR:Lcom/google/android/speech/audio/AudioUtils$Encoding;

.field public static final enum AMRNB:Lcom/google/android/speech/audio/AudioUtils$Encoding;

.field public static final enum WAV:Lcom/google/android/speech/audio/AudioUtils$Encoding;


# instance fields
.field private final mCode:I

.field private final mExt:Ljava/lang/String;

.field private final mMimeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v11, 0x3

    const/4 v2, 0x0

    const/4 v8, 0x2

    const/4 v5, 0x1

    new-instance v0, Lcom/google/android/speech/audio/AudioUtils$Encoding;

    const-string v1, "WAV"

    const-string v3, "audio/wav"

    const-string v4, "wav"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/speech/audio/AudioUtils$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/speech/audio/AudioUtils$Encoding;->WAV:Lcom/google/android/speech/audio/AudioUtils$Encoding;

    new-instance v3, Lcom/google/android/speech/audio/AudioUtils$Encoding;

    const-string v4, "AMR"

    const-string v6, "audio/AMR"

    const-string v7, "amr"

    invoke-direct/range {v3 .. v8}, Lcom/google/android/speech/audio/AudioUtils$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/speech/audio/AudioUtils$Encoding;->AMR:Lcom/google/android/speech/audio/AudioUtils$Encoding;

    new-instance v6, Lcom/google/android/speech/audio/AudioUtils$Encoding;

    const-string v7, "AMRNB"

    const-string v9, "audio/3gpp"

    const-string v10, "amr"

    invoke-direct/range {v6 .. v11}, Lcom/google/android/speech/audio/AudioUtils$Encoding;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Lcom/google/android/speech/audio/AudioUtils$Encoding;->AMRNB:Lcom/google/android/speech/audio/AudioUtils$Encoding;

    new-array v0, v11, [Lcom/google/android/speech/audio/AudioUtils$Encoding;

    sget-object v1, Lcom/google/android/speech/audio/AudioUtils$Encoding;->WAV:Lcom/google/android/speech/audio/AudioUtils$Encoding;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/speech/audio/AudioUtils$Encoding;->AMR:Lcom/google/android/speech/audio/AudioUtils$Encoding;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/speech/audio/AudioUtils$Encoding;->AMRNB:Lcom/google/android/speech/audio/AudioUtils$Encoding;

    aput-object v1, v0, v8

    sput-object v0, Lcom/google/android/speech/audio/AudioUtils$Encoding;->$VALUES:[Lcom/google/android/speech/audio/AudioUtils$Encoding;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/speech/audio/AudioUtils$Encoding;->mMimeType:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/speech/audio/AudioUtils$Encoding;->mExt:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/speech/audio/AudioUtils$Encoding;->mCode:I

    return-void
.end method

.method public static fromCode(I)Lcom/google/android/speech/audio/AudioUtils$Encoding;
    .locals 5

    invoke-static {}, Lcom/google/android/speech/audio/AudioUtils$Encoding;->values()[Lcom/google/android/speech/audio/AudioUtils$Encoding;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/google/android/speech/audio/AudioUtils$Encoding;->getCode()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/speech/audio/AudioUtils$Encoding;
    .locals 1

    const-class v0, Lcom/google/android/speech/audio/AudioUtils$Encoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/speech/audio/AudioUtils$Encoding;

    return-object v0
.end method

.method public static values()[Lcom/google/android/speech/audio/AudioUtils$Encoding;
    .locals 1

    sget-object v0, Lcom/google/android/speech/audio/AudioUtils$Encoding;->$VALUES:[Lcom/google/android/speech/audio/AudioUtils$Encoding;

    invoke-virtual {v0}, [Lcom/google/android/speech/audio/AudioUtils$Encoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/speech/audio/AudioUtils$Encoding;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/speech/audio/AudioUtils$Encoding;->mCode:I

    return v0
.end method

.method public final getExt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/speech/audio/AudioUtils$Encoding;->mExt:Ljava/lang/String;

    return-object v0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/speech/audio/AudioUtils$Encoding;->mMimeType:Ljava/lang/String;

    return-object v0
.end method
