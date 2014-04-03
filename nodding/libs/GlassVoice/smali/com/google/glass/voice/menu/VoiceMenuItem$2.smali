.class Lcom/google/glass/voice/menu/VoiceMenuItem$2;
.super Ljava/lang/Object;
.source "VoiceMenuItem.java"

# interfaces
.implements Lcom/google/glass/sound/SoundManager$SoundCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/menu/VoiceMenuItem;->playTriggerSounds(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field currentSoundIndex:I

.field final synthetic this$0:Lcom/google/glass/voice/menu/VoiceMenuItem;

.field final synthetic val$environment:Lcom/google/glass/voice/menu/VoiceMenuEnvironment;

.field final synthetic val$sounds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/util/List;Lcom/google/glass/voice/menu/VoiceMenuEnvironment;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem$2;->this$0:Lcom/google/glass/voice/menu/VoiceMenuItem;

    iput-object p2, p0, Lcom/google/glass/voice/menu/VoiceMenuItem$2;->val$sounds:Ljava/util/List;

    iput-object p3, p0, Lcom/google/glass/voice/menu/VoiceMenuItem$2;->val$environment:Lcom/google/glass/voice/menu/VoiceMenuEnvironment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem$2;->currentSoundIndex:I

    return-void
.end method

.method private playNextSound()V
    .locals 3

    .prologue
    .line 192
    iget v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem$2;->currentSoundIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem$2;->currentSoundIndex:I

    .line 193
    iget v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem$2;->currentSoundIndex:I

    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem$2;->val$sounds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 197
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem$2;->val$environment:Lcom/google/glass/voice/menu/VoiceMenuEnvironment;

    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem$2;->val$sounds:Ljava/util/List;

    iget v2, p0, Lcom/google/glass/voice/menu/VoiceMenuItem$2;->currentSoundIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-interface {v1, v0, p0}, Lcom/google/glass/voice/menu/VoiceMenuEnvironment;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager$SoundCompletionListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onSoundDone(Lcom/google/glass/sound/SoundManager$SoundId;)V
    .locals 0
    .parameter "sound"

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/google/glass/voice/menu/VoiceMenuItem$2;->playNextSound()V

    .line 182
    return-void
.end method

.method public onSoundFailed(Lcom/google/glass/sound/SoundManager$SoundId;I)V
    .locals 0
    .parameter "sound"
    .parameter "reason"

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/google/glass/voice/menu/VoiceMenuItem$2;->playNextSound()V

    .line 188
    return-void
.end method
