.class final Lcom/google/glass/app/l;
.super Lcom/google/glass/app/a;


# instance fields
.field final synthetic a:Lcom/google/glass/app/GlassVoiceActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/app/GlassVoiceActivity;Lcom/google/glass/input/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/app/l;->a:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-direct {p0, p2}, Lcom/google/glass/app/a;-><init>(Lcom/google/glass/input/ab;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 3

    iget-object v0, p0, Lcom/google/glass/app/l;->a:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassVoiceActivity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/l;->a:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassVoiceActivity;->n()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/app/l;->d()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Ignoring voice command because we don\'t have window focus."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/app/a;->a(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    goto :goto_0
.end method
