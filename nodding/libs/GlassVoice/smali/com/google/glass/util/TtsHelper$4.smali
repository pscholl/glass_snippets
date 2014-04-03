.class Lcom/google/glass/util/TtsHelper$4;
.super Ljava/lang/Object;
.source "TtsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/TtsHelper;->speakText(Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/TtsHelper;

.field final synthetic val$listener:Landroid/speech/tts/UtteranceProgressListener;

.field final synthetic val$textToSynthesize:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/util/TtsHelper;Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/glass/util/TtsHelper$4;->this$0:Lcom/google/glass/util/TtsHelper;

    iput-object p2, p0, Lcom/google/glass/util/TtsHelper$4;->val$textToSynthesize:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/glass/util/TtsHelper$4;->val$listener:Landroid/speech/tts/UtteranceProgressListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/glass/util/TtsHelper$4;->this$0:Lcom/google/glass/util/TtsHelper;

    iget-object v1, p0, Lcom/google/glass/util/TtsHelper$4;->val$textToSynthesize:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/util/TtsHelper$4;->val$listener:Landroid/speech/tts/UtteranceProgressListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/TtsHelper;->speakText(Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V

    .line 140
    return-void
.end method
