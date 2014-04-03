.class Lcom/google/android/speech/network/NetworkRecognitionRunner$1;
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
    .line 70
    iput-object p1, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner$1;->this$0:Lcom/google/android/speech/network/NetworkRecognitionRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/speech/network/NetworkRecognitionRunner$1;->this$0:Lcom/google/android/speech/network/NetworkRecognitionRunner;

    #calls: Lcom/google/android/speech/network/NetworkRecognitionRunner;->runNetworkLoop()V
    invoke-static {v0}, Lcom/google/android/speech/network/NetworkRecognitionRunner;->access$000(Lcom/google/android/speech/network/NetworkRecognitionRunner;)V

    .line 74
    return-void
.end method
