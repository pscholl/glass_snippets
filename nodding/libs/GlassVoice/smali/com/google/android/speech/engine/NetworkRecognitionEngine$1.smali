.class Lcom/google/android/speech/engine/NetworkRecognitionEngine$1;
.super Ljava/lang/Object;
.source "NetworkRecognitionEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/speech/engine/NetworkRecognitionEngine;->scheduleRetry(Lcom/google/android/speech/exception/RecognizeException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/speech/engine/NetworkRecognitionEngine;

.field final synthetic val$e:Lcom/google/android/speech/exception/RecognizeException;


# direct methods
.method constructor <init>(Lcom/google/android/speech/engine/NetworkRecognitionEngine;Lcom/google/android/speech/exception/RecognizeException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine$1;->this$0:Lcom/google/android/speech/engine/NetworkRecognitionEngine;

    iput-object p2, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine$1;->val$e:Lcom/google/android/speech/exception/RecognizeException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine$1;->this$0:Lcom/google/android/speech/engine/NetworkRecognitionEngine;

    iget-object v1, p0, Lcom/google/android/speech/engine/NetworkRecognitionEngine$1;->val$e:Lcom/google/android/speech/exception/RecognizeException;

    invoke-virtual {v0, v1}, Lcom/google/android/speech/engine/NetworkRecognitionEngine;->retry(Lcom/google/android/speech/exception/RecognizeException;)V

    .line 164
    return-void
.end method
