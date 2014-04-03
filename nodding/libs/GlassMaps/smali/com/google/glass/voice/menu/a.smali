.class public abstract Lcom/google/glass/voice/menu/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/glass/voice/menu/VoiceMenuEnvironment;


# instance fields
.field private final a:Lcom/google/glass/app/GlassVoiceActivity;


# direct methods
.method public constructor <init>(Lcom/google/glass/app/GlassVoiceActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/glass/voice/menu/a;->a:Lcom/google/glass/app/GlassVoiceActivity;

    return-void
.end method

.method static synthetic a(Lcom/google/glass/voice/menu/a;)Lcom/google/glass/app/GlassVoiceActivity;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/voice/menu/a;->a:Lcom/google/glass/app/GlassVoiceActivity;

    return-object v0
.end method

.method private static a(Lcom/google/glass/app/GlassActivity;Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/google/glass/util/bc;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/glass/app/GlassActivity;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/voice/menu/a;->a:Lcom/google/glass/app/GlassVoiceActivity;

    return-object v0
.end method

.method public final a(Lcom/google/glass/app/GlassError;)V
    .locals 1

    new-instance v0, Lcom/google/glass/voice/menu/b;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/menu/b;-><init>(Lcom/google/glass/voice/menu/a;Lcom/google/glass/app/GlassError;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/menu/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/g;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/voice/menu/a;->a:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassVoiceActivity;->l()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/sound/SoundManager;->a(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/g;)I

    return-void
.end method

.method public final a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/voice/menu/a;->a:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/app/GlassVoiceActivity;->a(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/google/glass/voice/menu/n;Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/voice/menu/a;->a:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-static {v0, p1}, Lcom/google/glass/voice/menu/a;->a(Lcom/google/glass/app/GlassActivity;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lcom/google/glass/voice/menu/a;->a:Lcom/google/glass/app/GlassVoiceActivity;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassVoiceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
