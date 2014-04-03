.class final Lcom/google/glass/voice/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/glass/voice/BaseVoiceInputActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/BaseVoiceInputActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/voice/c;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/voice/c;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-virtual {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->l()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/c;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-static {}, Lcom/google/glass/voice/BaseVoiceInputActivity;->x()Lcom/google/glass/sound/SoundManager$SoundId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->a(Lcom/google/glass/sound/SoundManager$SoundId;)I

    iget-object v0, p0, Lcom/google/glass/voice/c;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->a(I)V

    iget-object v0, p0, Lcom/google/glass/voice/c;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-static {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->i(Lcom/google/glass/voice/BaseVoiceInputActivity;)V

    iget-object v0, p0, Lcom/google/glass/voice/c;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->a(Lcom/google/glass/voice/BaseVoiceInputActivity;Z)Z

    iget-object v0, p0, Lcom/google/glass/voice/c;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v1, p0, Lcom/google/glass/voice/c;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-virtual {v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->y()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->a(Lcom/google/glass/voice/VoiceConfig;)V

    iget-object v0, p0, Lcom/google/glass/voice/c;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v1, p0, Lcom/google/glass/voice/c;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iget-object v1, v1, Lcom/google/glass/voice/BaseVoiceInputActivity;->h:Lcom/google/glass/voice/network/d;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/BaseVoiceInputActivity;->a(Lcom/google/glass/voice/network/d;)V

    return-void
.end method
