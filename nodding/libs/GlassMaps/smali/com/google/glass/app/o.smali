.class final Lcom/google/glass/app/o;
.super Lcom/google/glass/input/ac;


# instance fields
.field final synthetic a:Lcom/google/glass/app/GlassVoiceActivity;

.field final synthetic b:Lcom/google/glass/app/m;


# direct methods
.method constructor <init>(Lcom/google/glass/app/m;Lcom/google/glass/app/GlassVoiceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/app/o;->b:Lcom/google/glass/app/m;

    iput-object p2, p0, Lcom/google/glass/app/o;->a:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-direct {p0}, Lcom/google/glass/input/ac;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 3

    iget-object v0, p0, Lcom/google/glass/app/o;->b:Lcom/google/glass/app/m;

    invoke-static {v0}, Lcom/google/glass/app/m;->f(Lcom/google/glass/app/m;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/glass/app/o;->d()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Ignoring voice command because we don\'t have window focus."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/glass/app/o;->b:Lcom/google/glass/app/m;

    invoke-static {v0}, Lcom/google/glass/app/m;->a(Lcom/google/glass/app/m;)Lcom/google/glass/voice/menu/VoiceMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/menu/VoiceMenu;->a(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/glass/app/o;->b:Lcom/google/glass/app/m;

    invoke-static {v1}, Lcom/google/glass/app/m;->b(Lcom/google/glass/app/m;)Lcom/google/glass/app/q;

    move-result-object v1

    new-instance v2, Lcom/google/glass/app/p;

    invoke-direct {v2, p0, p1}, Lcom/google/glass/app/p;-><init>(Lcom/google/glass/app/o;Lcom/google/glass/voice/VoiceCommand;)V

    invoke-virtual {v1, v2}, Lcom/google/glass/app/q;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/app/o;->b:Lcom/google/glass/app/m;

    invoke-static {v0}, Lcom/google/glass/app/m;->e(Lcom/google/glass/app/m;)Lcom/google/glass/input/t;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/app/o;->b:Lcom/google/glass/app/m;

    invoke-static {v1}, Lcom/google/glass/app/m;->d(Lcom/google/glass/app/m;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/input/t;->a(Lcom/google/glass/voice/VoiceConfig;)V

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/app/o;->b:Lcom/google/glass/app/m;

    invoke-virtual {v0}, Lcom/google/glass/app/m;->isShowing()Z

    move-result v0

    return v0
.end method

.method public final d()Lcom/google/glass/logging/i;
    .locals 1

    invoke-static {}, Lcom/google/glass/app/m;->c()Lcom/google/glass/logging/i;

    move-result-object v0

    return-object v0
.end method
