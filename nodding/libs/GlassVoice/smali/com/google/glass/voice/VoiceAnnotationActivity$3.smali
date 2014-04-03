.class Lcom/google/glass/voice/VoiceAnnotationActivity$3;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "VoiceAnnotationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceAnnotationActivity;->showAddingDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceAnnotationActivity;

.field final synthetic val$textToReturn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceAnnotationActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/google/glass/voice/VoiceAnnotationActivity$3;->this$0:Lcom/google/glass/voice/VoiceAnnotationActivity;

    iput-object p2, p0, Lcom/google/glass/voice/VoiceAnnotationActivity$3;->val$textToReturn:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationActivity$3;->this$0:Lcom/google/glass/voice/VoiceAnnotationActivity;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceAnnotationActivity$3;->val$textToReturn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceAnnotationActivity;->onAnnotationCommitted(Ljava/lang/String;)V

    .line 390
    return-void
.end method
