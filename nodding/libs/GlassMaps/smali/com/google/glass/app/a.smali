.class Lcom/google/glass/app/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/glass/input/ab;


# instance fields
.field private final a:Lcom/google/glass/input/ab;


# direct methods
.method constructor <init>(Lcom/google/glass/input/ab;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/glass/app/a;->a:Lcom/google/glass/input/ab;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/app/a;->a:Lcom/google/glass/input/ab;

    invoke-interface {v0, p1}, Lcom/google/glass/input/ab;->a(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/app/a;->a:Lcom/google/glass/input/ab;

    invoke-interface {v0}, Lcom/google/glass/input/ab;->a()V

    return-void
.end method

.method public final a(Lcom/google/glass/voice/VoiceConfig;Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/app/a;->a:Lcom/google/glass/input/ab;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/input/ab;->a(Lcom/google/glass/voice/VoiceConfig;Z)V

    return-void
.end method

.method public final a(D)Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/app/a;->a:Lcom/google/glass/input/ab;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/input/ab;->a(D)Z

    move-result v0

    return v0
.end method

.method public final a([BII)Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/app/a;->a:Lcom/google/glass/input/ab;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/glass/input/ab;->a([BII)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/app/a;->a:Lcom/google/glass/input/ab;

    invoke-interface {v0}, Lcom/google/glass/input/ab;->b()V

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/google/glass/app/a;->a:Lcom/google/glass/input/ab;

    invoke-interface {v0}, Lcom/google/glass/input/ab;->c()Z

    move-result v0

    return v0
.end method

.method public final d()Lcom/google/glass/logging/i;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/app/a;->a:Lcom/google/glass/input/ab;

    invoke-interface {v0}, Lcom/google/glass/input/ab;->d()Lcom/google/glass/logging/i;

    move-result-object v0

    return-object v0
.end method
