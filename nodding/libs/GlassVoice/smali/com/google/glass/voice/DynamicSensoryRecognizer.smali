.class public Lcom/google/glass/voice/DynamicSensoryRecognizer;
.super Lcom/google/glass/voice/Sensory;
.source "DynamicSensoryRecognizer.java"


# static fields
.field private static final GRAMMAR_DISJUNCTION_OPERATOR:Ljava/lang/String; = "|"

.field public static final MAX_GRAMMAR_PHRASES:I = 0x14

.field private static final PARAM_A_DYNAMIC_PHRASESPOT:I = 0x19

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field protected final grammar:Ljava/lang/String;

.field private final ltsFile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/DynamicSensoryRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "recogFile"
    .parameter "ltsFile"
    .parameter "phrases"
    .parameter "tags"

    .prologue
    const/16 v5, 0x14

    .line 75
    invoke-direct {p0, p1}, Lcom/google/glass/voice/Sensory;-><init>(Landroid/content/Context;)V

    .line 76
    iput-object p3, p0, Lcom/google/glass/voice/DynamicSensoryRecognizer;->ltsFile:Ljava/lang/String;

    .line 84
    array-length v0, p4

    if-le v0, v5, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many phrases ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", max "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/voice/DynamicSensoryRecognizer;->nativeInitPhrasespotDynamic()J

    move-result-wide v1

    .line 94
    .local v1, sensoryContext:J
    invoke-static {p1, p3}, Lcom/google/glass/voice/DynamicSensoryRecognizer;->getPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0, p4}, Lcom/google/glass/voice/DynamicSensoryRecognizer;->nativeNormalizeText(JLjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 102
    .local v7, normalizedPhrases:[Ljava/lang/String;
    invoke-static {v7}, Lcom/google/glass/voice/DynamicSensoryRecognizer;->getValidPhrases([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 103
    .local v8, validPhrases:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 104
    .local v9, validTags:[Ljava/lang/String;
    if-eqz p5, :cond_1

    array-length v0, p5

    if-eqz v0, :cond_1

    .line 105
    invoke-static {v7, p5}, Lcom/google/glass/voice/DynamicSensoryRecognizer;->getValidTags([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 106
    invoke-static {v9}, Lcom/google/glass/voice/DynamicSensoryRecognizer;->checkValidity([Ljava/lang/String;)V

    .line 109
    :cond_1
    invoke-static {v8, v9}, Lcom/google/glass/voice/DynamicSensoryRecognizer;->generateGrammar([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/DynamicSensoryRecognizer;->grammar:Ljava/lang/String;

    .line 110
    invoke-direct {p0, v8}, Lcom/google/glass/voice/DynamicSensoryRecognizer;->generateGrammarWords([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 112
    .local v6, words:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/glass/voice/DynamicSensoryRecognizer;->grammar:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v6, :cond_2

    array-length v0, v6

    if-nez v0, :cond_3

    .line 113
    :cond_2
    sget-object v0, Lcom/google/glass/voice/DynamicSensoryRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Error generating grammar, Sensory object not correctly initialized"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/google/glass/voice/DynamicSensoryRecognizer;->sensoryContext:J

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_3
    invoke-static {p1, p2}, Lcom/google/glass/voice/DynamicSensoryRecognizer;->getPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, p3}, Lcom/google/glass/voice/DynamicSensoryRecognizer;->getPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/voice/DynamicSensoryRecognizer;->grammar:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/voice/DynamicSensoryRecognizer;->nativeCompileGrammar(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/glass/voice/DynamicSensoryRecognizer;->sensoryContext:J

    goto :goto_0
.end method

.method private static checkValidity([Ljava/lang/String;)V
    .locals 9
    .parameter "tags"

    .prologue
    .line 127
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 128
    .local v4, tag:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 129
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Null or empty tag"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 132
    :cond_1
    invoke-static {v4}, Lcom/google/glass/voice/VoiceCommand;->normalizeSemanticTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, normalized:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 134
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Tag not in normalized form: %s, %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 127
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v3           #normalized:Ljava/lang/String;
    .end local v4           #tag:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method static generateGrammar([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "phrases"
    .parameter "tags"

    .prologue
    const/16 v11, 0x14

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 185
    if-eqz p0, :cond_0

    array-length v7, p0

    if-nez v7, :cond_1

    .line 186
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Null or empty array of phrases provided for grammar, returning null grammar"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 190
    :cond_1
    array-length v7, p0

    if-le v7, v11, :cond_2

    .line 191
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Too many phrases (%d, max %d), returning null grammar"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    array-length v10, p0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v5

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 196
    :cond_2
    if-eqz p1, :cond_3

    array-length v7, p0

    array-length v8, p1

    if-ne v7, v8, :cond_5

    :cond_3
    :goto_0
    invoke-static {v5}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .local v0, b:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, p0

    if-ge v2, v5, :cond_7

    .line 203
    const-string v5, "w"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    aget-object v5, p0, v2

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 205
    .local v4, wordsInPhrase:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    array-length v5, v4

    if-ge v3, v5, :cond_6

    .line 206
    aget-object v5, v4, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    if-eqz p1, :cond_4

    .line 211
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_4

    .line 212
    const-string v5, "%"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    aget-object v5, v4, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string v5, "_tag_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    aget-object v5, p1, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    :cond_4
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0           #b:Ljava/lang/StringBuilder;
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #wordsInPhrase:[Ljava/lang/String;
    :cond_5
    move v5, v6

    .line 196
    goto :goto_0

    .line 221
    .restart local v0       #b:Ljava/lang/StringBuilder;
    .restart local v2       #i:I
    .restart local v3       #j:I
    .restart local v4       #wordsInPhrase:[Ljava/lang/String;
    :cond_6
    const-string v5, "; "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 225
    .end local v3           #j:I
    .end local v4           #wordsInPhrase:[Ljava/lang/String;
    :cond_7
    const-string v5, "g = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    const/4 v2, 0x1

    :goto_3
    array-length v5, p0

    add-int/lit8 v5, v5, 0x1

    if-ge v2, v5, :cond_9

    .line 227
    const-string v5, "$w"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    array-length v5, p0

    if-ne v2, v5, :cond_8

    .line 229
    const-string v5, "; "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 231
    :cond_8
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "|"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 238
    :cond_9
    const/4 v2, 0x1

    :goto_5
    array-length v5, p0

    add-int/lit8 v5, v5, 0x1

    if-ge v2, v5, :cond_a

    .line 239
    const-string v5, "paramA: $w"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v7, 0x19

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "; "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const-string v5, "paramB: $w"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " -"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "; "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 244
    :cond_a
    sget-object v5, Lcom/google/glass/voice/DynamicSensoryRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Generated dynamic grammar"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v5, v7, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "%"

    const-string v7, "%%"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, escaped:Ljava/lang/String;
    const/4 v5, 0x3

    const-string v6, "DynamicSensory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dynamic grammar: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private generateGrammarWords([Ljava/lang/String;)[Ljava/lang/String;
    .locals 18
    .parameter "phrases"

    .prologue
    .line 265
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v13, v0

    if-nez v13, :cond_2

    .line 266
    :cond_0
    sget-object v13, Lcom/google/glass/voice/DynamicSensoryRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v14, "Null or empty array of phrases provided for grammar words, returning null words"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-interface {v13, v14, v15}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    const/4 v1, 0x0

    .line 292
    :cond_1
    :goto_0
    return-object v1

    .line 270
    :cond_2
    move-object/from16 v0, p1

    array-length v13, v0

    const/16 v14, 0x14

    if-le v13, v14, :cond_3

    .line 271
    sget-object v13, Lcom/google/glass/voice/DynamicSensoryRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v14, "Too many phrases (%s, max 20), returning null grammar"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-interface {v13, v14, v15}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    const/4 v1, 0x0

    goto :goto_0

    .line 276
    :cond_3
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v11, words:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v2, p1

    .local v2, arr$:[Ljava/lang/String;
    array-length v7, v2

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    move v6, v5

    .end local v2           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .local v6, i$:I
    :goto_1
    if-ge v6, v7, :cond_5

    aget-object v9, v2, v6

    .line 280
    .local v9, phrase:Ljava/lang/String;
    const-string v13, " "

    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 281
    .local v12, wordsInPhrase:[Ljava/lang/String;
    move-object v3, v12

    .local v3, arr$:[Ljava/lang/String;
    array-length v8, v3

    .local v8, len$:I
    const/4 v5, 0x0

    .end local v6           #i$:I
    .restart local v5       #i$:I
    :goto_2
    if-ge v5, v8, :cond_4

    aget-object v10, v3, v5

    .line 282
    .local v10, word:Ljava/lang/String;
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 279
    .end local v10           #word:Ljava/lang/String;
    :cond_4
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5           #i$:I
    .restart local v6       #i$:I
    goto :goto_1

    .line 287
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v8           #len$:I
    .end local v9           #phrase:Ljava/lang/String;
    .end local v12           #wordsInPhrase:[Ljava/lang/String;
    :cond_5
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    new-array v1, v13, [Ljava/lang/String;

    .line 288
    .local v1, arr:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v4, v13, :cond_1

    .line 289
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    aput-object v13, v1, v4

    .line 288
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method private static getValidPhrases([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "normalizedPhrases"

    .prologue
    .line 141
    invoke-static {p0, p0}, Lcom/google/glass/voice/DynamicSensoryRecognizer;->getValuesWithNonEmptyKeys([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getValidTags([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "normalizedPhrases"
    .parameter "rawTags"

    .prologue
    .line 145
    invoke-static {p0, p1}, Lcom/google/glass/voice/DynamicSensoryRecognizer;->getValuesWithNonEmptyKeys([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getValuesWithNonEmptyKeys([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "keys"
    .parameter "values"

    .prologue
    .line 152
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v1

    .line 153
    .local v1, validValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 154
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_0
    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 160
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method


# virtual methods
.method getGrammarRuleCountForTests()I
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/voice/DynamicSensoryRecognizer;->grammar:Ljava/lang/String;

    const-string v1, "\\|"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method getGrammarRuleForTests()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/voice/DynamicSensoryRecognizer;->grammar:Ljava/lang/String;

    return-object v0
.end method

.method public getLtsFileBeingUsedForTests()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/voice/DynamicSensoryRecognizer;->ltsFile:Ljava/lang/String;

    return-object v0
.end method

.method public stringToCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;
    .locals 1
    .parameter "literal"

    .prologue
    .line 297
    new-instance v0, Lcom/google/glass/voice/VoiceCommand;

    invoke-direct {v0, p1}, Lcom/google/glass/voice/VoiceCommand;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 302
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "(redacted)"

    .line 303
    .local v0, grammar:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DynamicSensoryRecognizer [grammar="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 302
    .end local v0           #grammar:Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/DynamicSensoryRecognizer;->grammar:Ljava/lang/String;

    goto :goto_0
.end method
