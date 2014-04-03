.class Lcom/google/glass/voice/network/CallbackFactory$RecognizerEventProcessor;
.super Ljava/lang/Object;
.source "CallbackFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/network/CallbackFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecognizerEventProcessor"
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final callback:Lcom/google/android/speech/callback/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/speech/callback/Callback",
            "<",
            "Lcom/google/speech/s3/S3$S3Response;",
            "Lcom/google/android/speech/exception/RecognizeException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    const-class v0, Lcom/google/glass/voice/network/CallbackFactory$RecognizerEventProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/CallbackFactory$RecognizerEventProcessor;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/speech/callback/Callback;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/speech/callback/Callback",
            "<",
            "Lcom/google/speech/s3/S3$S3Response;",
            "Lcom/google/android/speech/exception/RecognizeException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, callback:Lcom/google/android/speech/callback/Callback;,"Lcom/google/android/speech/callback/Callback<Lcom/google/speech/s3/S3$S3Response;Lcom/google/android/speech/exception/RecognizeException;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/speech/callback/Callback;

    iput-object v0, p0, Lcom/google/glass/voice/network/CallbackFactory$RecognizerEventProcessor;->callback:Lcom/google/android/speech/callback/Callback;

    .line 116
    return-void
.end method


# virtual methods
.method process(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/glass/voice/network/CallbackFactory$RecognizerEventProcessor;->callback:Lcom/google/android/speech/callback/Callback;

    invoke-static {p1}, Lcom/google/android/speech/message/S3ResponseBuilder;->createInProgress(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)Lcom/google/speech/s3/S3$S3Response;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/speech/callback/Callback;->onResult(Ljava/lang/Object;)V

    .line 123
    return-void
.end method
