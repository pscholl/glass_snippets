.class final Lcom/google/glass/maps/ad;
.super Lcom/google/glass/voice/menu/f;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/glass/maps/NavigationActivity;


# direct methods
.method varargs constructor <init>(Lcom/google/glass/maps/NavigationActivity;Lcom/google/glass/voice/VoiceCommand;I[Lcom/google/glass/voice/menu/e;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/ad;->b:Lcom/google/glass/maps/NavigationActivity;

    iput-boolean p5, p0, Lcom/google/glass/maps/ad;->a:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/google/glass/voice/menu/f;-><init>(Lcom/google/glass/voice/VoiceCommand;I[Lcom/google/glass/voice/menu/e;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/ad;->b:Lcom/google/glass/maps/NavigationActivity;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationActivity;->o()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;Z)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/google/glass/voice/menu/f;->a(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;Z)V

    iget-object v0, p0, Lcom/google/glass/maps/ad;->b:Lcom/google/glass/maps/NavigationActivity;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationActivity;->onUserInteraction()V

    iget-object v1, p0, Lcom/google/glass/maps/ad;->b:Lcom/google/glass/maps/NavigationActivity;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_COMMAND_SPOKEN:Lcom/google/glass/userevent/UserEventAction;

    iget-boolean v0, p0, Lcom/google/glass/maps/ad;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "26"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/google/glass/maps/NavigationActivity;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/glass/maps/ad;->b:Lcom/google/glass/maps/NavigationActivity;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationActivity;->q()V

    iget-object v0, p0, Lcom/google/glass/maps/ad;->b:Lcom/google/glass/maps/NavigationActivity;

    iget-object v0, v0, Lcom/google/glass/maps/NavigationActivity;->i:Lcom/google/glass/util/aq;

    new-instance v1, Lcom/google/glass/maps/ae;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/ae;-><init>(Lcom/google/glass/maps/ad;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/util/aq;->a(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const-string v0, "25"

    goto :goto_0
.end method
