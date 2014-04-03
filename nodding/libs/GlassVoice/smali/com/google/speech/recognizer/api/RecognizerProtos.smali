.class public final Lcom/google/speech/recognizer/api/RecognizerProtos;
.super Ljava/lang/Object;
.source "RecognizerProtos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;,
        Lcom/google/speech/recognizer/api/RecognizerProtos$PartialResult;,
        Lcom/google/speech/recognizer/api/RecognizerProtos$PartialPart;,
        Lcom/google/speech/recognizer/api/RecognizerProtos$HotwordEvent;,
        Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;,
        Lcom/google/speech/recognizer/api/RecognizerProtos$AudioEvent;,
        Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;,
        Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionResult;,
        Lcom/google/speech/recognizer/api/RecognizerProtos$Hypothesis;,
        Lcom/google/speech/recognizer/api/RecognizerProtos$SemanticResult;
    }
.end annotation


# static fields
.field public static final STATUS_CODE_STATUS_CANCELED:I = 0x4

.field public static final STATUS_CODE_STATUS_INITIALIZATION_ERROR:I = 0x1

.field public static final STATUS_CODE_STATUS_RECOGNITION_ERROR:I = 0x2

.field public static final STATUS_CODE_STATUS_STREAM_BROKEN:I = 0x3

.field public static final STATUS_CODE_STATUS_SUCCESS:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
