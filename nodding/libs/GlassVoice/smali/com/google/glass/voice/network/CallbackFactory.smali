.class public Lcom/google/glass/voice/network/CallbackFactory;
.super Ljava/lang/Object;
.source "CallbackFactory.java"

# interfaces
.implements Lcom/google/android/speech/embedded/Greco3CallbackFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/network/CallbackFactory$RecognizerEventProcessor;,
        Lcom/google/glass/voice/network/CallbackFactory$Greco3CallbackImpl;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final endpointerEventPreprocessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;",
            ">;"
        }
    .end annotation
.end field

.field private lastEndpointerEventProcessor:Lcom/google/glass/voice/network/EndpointerEventProcessor;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, endpointerEventPreprocessors:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/network/EndpointerEventProcessor$EventPreprocessor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/glass/voice/network/CallbackFactory;->endpointerEventPreprocessors:Ljava/util/List;

    .line 44
    iput-object p2, p0, Lcom/google/glass/voice/network/CallbackFactory;->context:Landroid/content/Context;

    .line 45
    return-void
.end method


# virtual methods
.method public create(Lcom/google/android/speech/callback/Callback;Lcom/google/android/speech/audio/EndpointerListener;Lcom/google/android/speech/embedded/Greco3Mode;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;)Lcom/google/android/speech/embedded/Greco3Callback;
    .locals 3
    .parameter
    .parameter "listener"
    .parameter "mode"
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/speech/callback/Callback",
            "<",
            "Lcom/google/speech/s3/S3$S3Response;",
            "Lcom/google/android/speech/exception/RecognizeException;",
            ">;",
            "Lcom/google/android/speech/audio/EndpointerListener;",
            "Lcom/google/android/speech/embedded/Greco3Mode;",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;",
            ")",
            "Lcom/google/android/speech/embedded/Greco3Callback;"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, wrapped:Lcom/google/android/speech/callback/Callback;,"Lcom/google/android/speech/callback/Callback<Lcom/google/speech/s3/S3$S3Response;Lcom/google/android/speech/exception/RecognizeException;>;"
    new-instance v0, Lcom/google/glass/voice/network/EndpointerEventProcessor;

    iget-object v1, p0, Lcom/google/glass/voice/network/CallbackFactory;->endpointerEventPreprocessors:Ljava/util/List;

    iget-object v2, p0, Lcom/google/glass/voice/network/CallbackFactory;->context:Landroid/content/Context;

    invoke-direct {v0, p2, p4, v1, v2}, Lcom/google/glass/voice/network/EndpointerEventProcessor;-><init>(Lcom/google/android/speech/audio/EndpointerListener;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/CallbackFactory;->lastEndpointerEventProcessor:Lcom/google/glass/voice/network/EndpointerEventProcessor;

    .line 54
    new-instance v0, Lcom/google/glass/voice/network/CallbackFactory$Greco3CallbackImpl;

    iget-object v1, p0, Lcom/google/glass/voice/network/CallbackFactory;->lastEndpointerEventProcessor:Lcom/google/glass/voice/network/EndpointerEventProcessor;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/glass/voice/network/CallbackFactory$Greco3CallbackImpl;-><init>(Lcom/google/glass/voice/network/CallbackFactory;Lcom/google/android/speech/callback/Callback;Lcom/google/glass/voice/network/EndpointerEventProcessor;)V

    return-object v0
.end method

.method public getLastEndpointerEventProcessor()Lcom/google/glass/voice/network/EndpointerEventProcessor;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/glass/voice/network/CallbackFactory;->lastEndpointerEventProcessor:Lcom/google/glass/voice/network/EndpointerEventProcessor;

    return-object v0
.end method
