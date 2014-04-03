.class Lcom/google/glass/sound/SoundManager$3;
.super Ljava/lang/Object;
.source "SoundManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager$SoundCompletionListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/sound/SoundManager;

.field final synthetic val$listener:Lcom/google/glass/sound/SoundManager$SoundCompletionListener;

.field final synthetic val$reason:I

.field final synthetic val$soundId:Lcom/google/glass/sound/SoundManager$SoundId;


# direct methods
.method constructor <init>(Lcom/google/glass/sound/SoundManager;Lcom/google/glass/sound/SoundManager$SoundCompletionListener;Lcom/google/glass/sound/SoundManager$SoundId;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/google/glass/sound/SoundManager$3;->this$0:Lcom/google/glass/sound/SoundManager;

    iput-object p2, p0, Lcom/google/glass/sound/SoundManager$3;->val$listener:Lcom/google/glass/sound/SoundManager$SoundCompletionListener;

    iput-object p3, p0, Lcom/google/glass/sound/SoundManager$3;->val$soundId:Lcom/google/glass/sound/SoundManager$SoundId;

    iput p4, p0, Lcom/google/glass/sound/SoundManager$3;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/glass/sound/SoundManager$3;->val$listener:Lcom/google/glass/sound/SoundManager$SoundCompletionListener;

    iget-object v1, p0, Lcom/google/glass/sound/SoundManager$3;->val$soundId:Lcom/google/glass/sound/SoundManager$SoundId;

    iget v2, p0, Lcom/google/glass/sound/SoundManager$3;->val$reason:I

    invoke-interface {v0, v1, v2}, Lcom/google/glass/sound/SoundManager$SoundCompletionListener;->onSoundFailed(Lcom/google/glass/sound/SoundManager$SoundId;I)V

    .line 313
    return-void
.end method
