.class Lcom/google/glass/voice/VoiceAnnotationActivity$1;
.super Landroid/os/Handler;
.source "VoiceAnnotationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceAnnotationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceAnnotationActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceAnnotationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/glass/voice/VoiceAnnotationActivity$1;->this$0:Lcom/google/glass/voice/VoiceAnnotationActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 103
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 105
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity$1;->this$0:Lcom/google/glass/voice/VoiceAnnotationActivity;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity$1;->this$0:Lcom/google/glass/voice/VoiceAnnotationActivity;

    #calls: Lcom/google/glass/voice/VoiceAnnotationActivity;->confirmAnnotation()V
    invoke-static {v0}, Lcom/google/glass/voice/VoiceAnnotationActivity;->access$000(Lcom/google/glass/voice/VoiceAnnotationActivity;)V

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
