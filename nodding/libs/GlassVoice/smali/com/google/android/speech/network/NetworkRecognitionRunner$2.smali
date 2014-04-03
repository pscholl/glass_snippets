.class Lcom/google/android/speech/network/NetworkRecognitionRunner$2;
.super Ljava/lang/Object;
.source "NetworkRecognitionRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/network/NetworkRecognitionRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/speech/network/NetworkRecognitionRunner;


# direct methods
.method constructor <init>(Lcom/google/android/speech/network/NetworkRecognitionRunner;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner$2;->this$0:Lcom/google/android/speech/network/NetworkRecognitionRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner$2;->this$0:Lcom/google/android/speech/network/NetworkRecognitionRunner;

    #getter for: Lcom/google/android/speech/network/NetworkRecognitionRunner;->mS3Connection:Lcom/google/android/speech/network/S3Connection;
    invoke-static {v0}, Lcom/google/android/speech/network/NetworkRecognitionRunner;->access$100(Lcom/google/android/speech/network/NetworkRecognitionRunner;)Lcom/google/android/speech/network/S3Connection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 81
    iget-object v0, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner$2;->this$0:Lcom/google/android/speech/network/NetworkRecognitionRunner;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/speech/network/NetworkRecognitionRunner;->mS3Connection:Lcom/google/android/speech/network/S3Connection;
    invoke-static {v0, v1}, Lcom/google/android/speech/network/NetworkRecognitionRunner;->access$102(Lcom/google/android/speech/network/NetworkRecognitionRunner;Lcom/google/android/speech/network/S3Connection;)Lcom/google/android/speech/network/S3Connection;

    .line 82
    return-void
.end method
