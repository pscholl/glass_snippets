.class public Lcom/google/android/speech/utils/RecognizedText;
.super Ljava/lang/Object;
.source "RecognizedText.java"


# static fields
.field private static final DBG:Z = false

.field private static final HIGH_CONFIDENCE_PARTIAL_THRESHOLD:D = 0.9

.field private static final TAG:Ljava/lang/String; = "VS.RecognizedText"


# instance fields
.field private mCombinedResult:Lcom/google/android/speech/alternates/CorrectableString;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mStable:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/speech/utils/RecognizedText;->mStable:Ljava/lang/StringBuilder;

    .line 34
    return-void
.end method

.method private static extractCombinedCorrectable(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Lcom/google/android/speech/alternates/CorrectableString;
    .locals 5
    .parameter "event"

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasCombinedResult()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getCombinedResult()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    move-result-object v3

    .line 124
    .local v3, result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    invoke-virtual {v3}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getHypothesisCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 125
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getHypothesis(I)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/speech/utils/RecognizedText;->extractCorrectable(Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;)Lcom/google/android/speech/alternates/CorrectableString;

    move-result-object v0

    .line 128
    .local v0, combinedCorrectable:Lcom/google/android/speech/alternates/CorrectableString;
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    invoke-virtual {v3}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getHypothesisCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 129
    invoke-virtual {v3, v2}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getHypothesis(I)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/speech/utils/RecognizedText;->extractCorrectable(Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;)Lcom/google/android/speech/alternates/CorrectableString;

    move-result-object v1

    .line 132
    .local v1, correctable:Lcom/google/android/speech/alternates/CorrectableString;
    invoke-virtual {v0, v1}, Lcom/google/android/speech/alternates/CorrectableString;->addFullLengthSpan(Ljava/lang/Object;)V

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    .end local v0           #combinedCorrectable:Lcom/google/android/speech/alternates/CorrectableString;
    .end local v1           #correctable:Lcom/google/android/speech/alternates/CorrectableString;
    .end local v2           #i:I
    .end local v3           #result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    :cond_0
    new-instance v0, Lcom/google/android/speech/alternates/CorrectableString;

    const-string v4, ""

    invoke-direct {v0, v4}, Lcom/google/android/speech/alternates/CorrectableString;-><init>(Ljava/lang/CharSequence;)V

    :cond_1
    return-object v0
.end method

.method private static extractCorrectable(Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;)Lcom/google/android/speech/alternates/CorrectableString;
    .locals 3
    .parameter "hypothesis"

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasText()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getText()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, text:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasAlternates()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getAlternates()Lcom/google/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/speech/common/Alternates$RecognitionClientAlternates;->getSpanList()Ljava/util/List;

    move-result-object v0

    .line 145
    .local v0, alternates:Ljava/util/List;,"Ljava/util/List<Lcom/google/speech/common/Alternates$AlternateSpan;>;"
    :goto_1
    new-instance v2, Lcom/google/android/speech/alternates/CorrectableString;

    invoke-direct {v2, v1, v0}, Lcom/google/android/speech/alternates/CorrectableString;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    return-object v2

    .line 142
    .end local v0           #alternates:Ljava/util/List;,"Ljava/util/List<Lcom/google/speech/common/Alternates$AlternateSpan;>;"
    .end local v1           #text:Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 143
    .restart local v1       #text:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateStableResults(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 150
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasResult()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getResult()Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;

    move-result-object v1

    .line 152
    .local v1, result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    invoke-virtual {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getHypothesisCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 153
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;->getHypothesis(I)Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;

    move-result-object v0

    .line 154
    .local v0, hypothesis:Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    invoke-virtual {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->hasText()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/google/android/speech/utils/RecognizedText;->mStable:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .end local v0           #hypothesis:Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;
    .end local v1           #result:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;
    :cond_0
    return-void
.end method


# virtual methods
.method public getStableForErrorReporting()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/speech/utils/RecognizedText;->mStable:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasCompletedRecognition()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/speech/utils/RecognizedText;->mCombinedResult:Lcom/google/android/speech/alternates/CorrectableString;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateFinal(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Lcom/google/android/speech/alternates/CorrectableString;
    .locals 3
    .parameter "event"

    .prologue
    .line 110
    invoke-static {p1}, Lcom/google/android/speech/utils/RecognizedText;->extractCombinedCorrectable(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Lcom/google/android/speech/alternates/CorrectableString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/utils/RecognizedText;->mCombinedResult:Lcom/google/android/speech/alternates/CorrectableString;

    .line 111
    iget-object v0, p0, Lcom/google/android/speech/utils/RecognizedText;->mStable:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/speech/utils/RecognizedText;->mStable:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 112
    iget-object v0, p0, Lcom/google/android/speech/utils/RecognizedText;->mStable:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/speech/utils/RecognizedText;->mCombinedResult:Lcom/google/android/speech/alternates/CorrectableString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 113
    iget-object v0, p0, Lcom/google/android/speech/utils/RecognizedText;->mCombinedResult:Lcom/google/android/speech/alternates/CorrectableString;

    return-object v0
.end method

.method public updateInProgress(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Landroid/util/Pair;
    .locals 11
    .parameter "event"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/google/android/speech/utils/RecognizedText;->updateStableResults(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V

    .line 65
    const/4 v3, 0x0

    .line 66
    .local v3, lowConfidence:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 70
    .local v1, highConfidence:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->hasPartialResult()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, foundUnstable:Z
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->getPartialResult()Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;

    move-result-object v6

    .line 73
    .local v6, partialResult:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    invoke-virtual {v6}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getPartCount()I

    move-result v4

    .line 74
    .local v4, partCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_4

    .line 75
    invoke-virtual {v6, v2}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;->getPart(I)Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;

    move-result-object v5

    .line 76
    .local v5, partialPart:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    invoke-virtual {v5}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->hasText()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 81
    if-nez v0, :cond_2

    invoke-virtual {v5}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->hasStability()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->getStability()D

    move-result-wide v7

    const-wide v9, 0x3feccccccccccccdL

    cmpl-double v7, v7, v9

    if-ltz v7, :cond_2

    .line 83
    if-nez v1, :cond_0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #highConfidence:Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/google/android/speech/utils/RecognizedText;->mStable:Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 86
    .restart local v1       #highConfidence:Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v5}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    :cond_2
    if-nez v3, :cond_3

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #lowConfidence:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .restart local v3       #lowConfidence:Ljava/lang/StringBuilder;
    :cond_3
    invoke-virtual {v5}, Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const/4 v0, 0x1

    goto :goto_1

    .line 98
    .end local v0           #foundUnstable:Z
    .end local v2           #i:I
    .end local v4           #partCount:I
    .end local v5           #partialPart:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;
    .end local v6           #partialResult:Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;
    :cond_4
    if-nez v1, :cond_5

    iget-object v7, p0, Lcom/google/android/speech/utils/RecognizedText;->mStable:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    :goto_2
    if-nez v3, :cond_6

    const-string v7, ""

    :goto_3
    invoke-static {v8, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    return-object v7

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3
.end method
