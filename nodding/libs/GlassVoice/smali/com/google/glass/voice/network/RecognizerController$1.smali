.class Lcom/google/glass/voice/network/RecognizerController$1;
.super Landroid/os/Handler;
.source "RecognizerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/network/RecognizerController;-><init>(Lcom/google/android/speech/Recognizer;Lcom/google/android/speech/SpeechLevelSource;Lcom/google/android/speech/SpeechSettings;Lcom/google/glass/voice/network/Cookies;Landroid/content/Context;Lcom/google/glass/voice/network/CallbackFactory;Lcom/google/glass/location/LocationManagerHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/network/RecognizerController;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/RecognizerController;Landroid/os/Looper;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/google/glass/voice/network/RecognizerController$1;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    iput-object p3, p0, Lcom/google/glass/voice/network/RecognizerController$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 161
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 179
    :goto_0
    return-void

    .line 163
    :pswitch_0
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Manually timed out request after 20000ms."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$1;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    iget-object v1, v1, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$1;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    iget-object v1, v1, Lcom/google/glass/voice/network/RecognizerController;->queueingGrecoListener:Lcom/google/glass/voice/network/QueueingGrecoListener;

    new-instance v2, Lcom/google/android/speech/exception/NetworkRecognizeException;

    const-string v3, "Manually timed out"

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/google/android/speech/exception/NetworkRecognizeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/network/QueueingGrecoListener;->onError(Lcom/google/android/speech/exception/RecognizeException;)V

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$1;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->recognizer:Lcom/google/android/speech/Recognizer;
    invoke-static {v1}, Lcom/google/glass/voice/network/RecognizerController;->access$100(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/android/speech/Recognizer;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/speech/Recognizer;->cancel()V

    .line 175
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/glass/net/NetworkUtil;->pingGoogle(Landroid/content/Context;)Z

    move-result v0

    .line 176
    .local v0, connected:Z
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Connected to google after failing? %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
