.class public Lcom/google/glass/voice/StaticSensoryRecognizer;
.super Lcom/google/glass/voice/Sensory;
.source "StaticSensoryRecognizer.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final recogFilePaths:[Ljava/lang/String;

.field private final searchFilePaths:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/google/glass/voice/StaticSensoryRecognizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/StaticSensoryRecognizer;->TAG:Ljava/lang/String;

    .line 19
    sget-object v0, Lcom/google/glass/voice/StaticSensoryRecognizer;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/StaticSensoryRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "recogFilePaths"
    .parameter "searchFilePaths"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/glass/voice/Sensory;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object p2, p0, Lcom/google/glass/voice/StaticSensoryRecognizer;->recogFilePaths:[Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/google/glass/voice/StaticSensoryRecognizer;->searchFilePaths:[Ljava/lang/String;

    .line 29
    invoke-virtual {p0, p2, p3}, Lcom/google/glass/voice/StaticSensoryRecognizer;->nativeInitPhrasespot([Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/voice/StaticSensoryRecognizer;->sensoryContext:J

    .line 30
    return-void
.end method

.method public static newStaticSensoryRecognizer(Landroid/content/Context;Lcom/google/glass/voice/StaticRecognizerFiles;)Lcom/google/glass/voice/Sensory;
    .locals 7
    .parameter "context"
    .parameter "recognizerFiles"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 39
    iget-boolean v2, p1, Lcom/google/glass/voice/StaticRecognizerFiles;->rtaCompatible:Z

    if-eqz v2, :cond_0

    .line 40
    sget-object v2, Lcom/google/glass/voice/StaticSensoryRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Using RTA-compatible recognition files but hybrid recognition is unnecessary!"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    :cond_0
    new-array v0, v6, [Ljava/lang/String;

    iget-object v2, p1, Lcom/google/glass/voice/StaticRecognizerFiles;->recogFile:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/google/glass/voice/StaticSensoryRecognizer;->getPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 44
    .local v0, recogFilePaths:[Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/String;

    iget-object v2, p1, Lcom/google/glass/voice/StaticRecognizerFiles;->searchFile:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/google/glass/voice/StaticSensoryRecognizer;->getPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 45
    .local v1, searchFilePaths:[Ljava/lang/String;
    new-instance v2, Lcom/google/glass/voice/StaticSensoryRecognizer;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/glass/voice/StaticSensoryRecognizer;-><init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v2
.end method

.method public static newStaticSensoryRecognizer(Landroid/content/Context;Ljava/util/List;)Lcom/google/glass/voice/Sensory;
    .locals 7
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/StaticRecognizerFiles;",
            ">;)",
            "Lcom/google/glass/voice/Sensory;"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, recogFiles:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/StaticRecognizerFiles;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 57
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Must provide recog files."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 60
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 61
    .local v0, filesetCount:I
    const/4 v5, 0x1

    if-ne v0, v5, :cond_2

    .line 62
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/glass/voice/StaticRecognizerFiles;

    invoke-static {p0, v5}, Lcom/google/glass/voice/StaticSensoryRecognizer;->newStaticSensoryRecognizer(Landroid/content/Context;Lcom/google/glass/voice/StaticRecognizerFiles;)Lcom/google/glass/voice/Sensory;

    move-result-object v5

    .line 77
    :goto_0
    return-object v5

    .line 65
    :cond_2
    new-array v2, v0, [Ljava/lang/String;

    .line 66
    .local v2, recogFilePaths:[Ljava/lang/String;
    new-array v4, v0, [Ljava/lang/String;

    .line 68
    .local v4, searchFilePaths:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 69
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/voice/StaticRecognizerFiles;

    .line 70
    .local v3, recognizerFileset:Lcom/google/glass/voice/StaticRecognizerFiles;
    iget-boolean v5, v3, Lcom/google/glass/voice/StaticRecognizerFiles;->combined:Z

    if-eqz v5, :cond_3

    if-eqz v1, :cond_3

    .line 71
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Only the first recognizer fileset can be precombined."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 74
    :cond_3
    iget-object v5, v3, Lcom/google/glass/voice/StaticRecognizerFiles;->recogFile:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/google/glass/voice/StaticSensoryRecognizer;->getPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 75
    iget-object v5, v3, Lcom/google/glass/voice/StaticRecognizerFiles;->searchFile:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/google/glass/voice/StaticSensoryRecognizer;->getPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 77
    .end local v3           #recognizerFileset:Lcom/google/glass/voice/StaticRecognizerFiles;
    :cond_4
    new-instance v5, Lcom/google/glass/voice/StaticSensoryRecognizer;

    invoke-direct {v5, p0, v2, v4}, Lcom/google/glass/voice/StaticSensoryRecognizer;-><init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final stringToCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;
    .locals 6
    .parameter "literal"

    .prologue
    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Null or empty literal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_0
    const/16 v2, 0x5f

    const/16 v3, 0x20

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 89
    sget-object v2, Lcom/google/glass/voice/VoiceCommand;->staticCommands:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceCommand;

    .line 90
    .local v0, c:Lcom/google/glass/voice/VoiceCommand;
    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceCommand;->getLiteral()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    .end local v0           #c:Lcom/google/glass/voice/VoiceCommand;
    :goto_0
    return-object v0

    .line 95
    :cond_2
    sget-object v2, Lcom/google/glass/voice/StaticSensoryRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "No static command for this literal, synthesizing"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    const/4 v2, 0x4

    sget-object v3, Lcom/google/glass/voice/StaticSensoryRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Literal: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v0, Lcom/google/glass/voice/VoiceCommand;

    invoke-direct {v0, p1}, Lcom/google/glass/voice/VoiceCommand;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 102
    const-string v0, "StaticSensoryRecognizer [recogFilePaths=%s, searchFilePaths=%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/glass/voice/StaticSensoryRecognizer;->recogFilePaths:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/glass/voice/StaticSensoryRecognizer;->searchFilePaths:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
