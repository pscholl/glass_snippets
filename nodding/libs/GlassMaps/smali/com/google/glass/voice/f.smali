.class final Lcom/google/glass/voice/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/glass/voice/network/h;


# instance fields
.field final synthetic a:Lcom/google/glass/voice/network/a;

.field final synthetic b:Lcom/google/glass/voice/BaseVoiceInputActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/BaseVoiceInputActivity;Lcom/google/glass/voice/network/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/voice/f;->b:Lcom/google/glass/voice/BaseVoiceInputActivity;

    iput-object p2, p0, Lcom/google/glass/voice/f;->a:Lcom/google/glass/voice/network/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/f;->a:Lcom/google/glass/voice/network/a;

    invoke-interface {v1}, Lcom/google/glass/voice/network/a;->a()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/google/glass/voice/f;->b:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-static {v2}, Lcom/google/glass/voice/BaseVoiceInputActivity;->j(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/voice/AudioInputRelativeLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/AudioInputRelativeLayout;->setSpeechLevelSource(Lcom/google/glass/voice/network/h;)V

    iget-object v2, p0, Lcom/google/glass/voice/f;->b:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-virtual {v2}, Lcom/google/glass/voice/BaseVoiceInputActivity;->d()Lcom/google/glass/logging/i;

    move-result-object v2

    const-string v3, "Failed to determine speech level"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/i;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
