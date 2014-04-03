.class public abstract Lcom/google/glass/voice/menu/n;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/glass/logging/i;


# instance fields
.field private b:Z

.field private c:Z

.field protected final d:Ljava/util/List;

.field private e:Lcom/google/glass/sound/SoundManager$SoundId;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/menu/n;->a:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/menu/n;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/glass/voice/menu/n;->d:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/menu/n;->b:Z

    return-void
.end method

.method private b(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;)Lcom/google/glass/app/GlassError;
    .locals 3

    iget-object v0, p0, Lcom/google/glass/voice/menu/n;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/e;

    invoke-interface {v0, p1}, Lcom/google/glass/voice/menu/e;->a(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, p1}, Lcom/google/glass/voice/menu/e;->b(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;)Lcom/google/glass/app/GlassError;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;)V
    .locals 3

    invoke-interface {p0}, Lcom/google/glass/voice/menu/VoiceMenuEnvironment;->a()Lcom/google/glass/app/GlassActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/google/glass/app/GlassVoiceActivity;

    if-nez v1, :cond_0

    sget-object v0, Lcom/google/glass/voice/menu/n;->a:Lcom/google/glass/logging/i;

    const-string v1, "Menu item invoked by voice outside of GlassVoiceActivity, cannot preserve config!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    check-cast v0, Lcom/google/glass/app/GlassVoiceActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassVoiceActivity;->b(Z)V

    goto :goto_0
.end method

.method private c(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;Z)V
    .locals 3

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/common/collect/Lists;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    if-nez p2, :cond_0

    sget-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean v0, p0, Lcom/google/glass/voice/menu/n;->c:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/glass/voice/menu/n;->f:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/glass/voice/menu/n;->f:Z

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    :cond_1
    sget-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager$SoundId;

    new-instance v2, Lcom/google/glass/voice/menu/p;

    invoke-direct {v2, p0, v1, p1}, Lcom/google/glass/voice/menu/p;-><init>(Lcom/google/glass/voice/menu/n;Ljava/util/List;Lcom/google/glass/voice/menu/VoiceMenuEnvironment;)V

    invoke-interface {p1, v0, v2}, Lcom/google/glass/voice/menu/VoiceMenuEnvironment;->a(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/g;)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/glass/voice/menu/n;->e:Lcom/google/glass/sound/SoundManager$SoundId;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/glass/voice/menu/n;->e:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_2

    sget-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_COMPLETED:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Lcom/google/glass/voice/VoiceConfig;
.end method

.method public abstract a(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract a(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;Z)V
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end method

.method public abstract a(Lcom/google/glass/voice/VoiceCommand;)Z
.end method

.method public final a(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/glass/voice/menu/n;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/e;

    invoke-interface {v0, p1}, Lcom/google/glass/voice/menu/e;->a(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;Z)Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/voice/menu/n;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/menu/n;->a(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/glass/voice/menu/n;->b(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;)Lcom/google/glass/app/GlassError;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/glass/voice/menu/VoiceMenuEnvironment;->a(Lcom/google/glass/app/GlassError;)V

    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->d:Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/menu/n;->b:Z

    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/menu/n;->c(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;Z)V

    new-instance v0, Lcom/google/glass/voice/menu/o;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/voice/menu/o;-><init>(Lcom/google/glass/voice/menu/n;Lcom/google/glass/voice/menu/VoiceMenuEnvironment;Z)V

    invoke-interface {p1, v0}, Lcom/google/glass/voice/menu/VoiceMenuEnvironment;->a(Ljava/lang/Runnable;)V

    if-eqz p2, :cond_2

    iget-boolean v0, p0, Lcom/google/glass/voice/menu/n;->c:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/google/glass/voice/menu/n;->c(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/voice/menu/n;->a()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/menu/n;->b:Z

    return-void
.end method
