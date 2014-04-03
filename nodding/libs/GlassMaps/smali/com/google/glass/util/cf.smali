.class final Lcom/google/glass/util/cf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field final synthetic a:Lcom/google/glass/util/cc;


# direct methods
.method constructor <init>(Lcom/google/glass/util/cc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/util/cf;->a:Lcom/google/glass/util/cc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInit(I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/glass/util/cc;->b()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "TextToSpeech initialization status: %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/google/glass/util/cf;->a:Lcom/google/glass/util/cc;

    invoke-static {v0, v5}, Lcom/google/glass/util/cc;->a(Lcom/google/glass/util/cc;Z)Z

    iget-object v0, p0, Lcom/google/glass/util/cf;->a:Lcom/google/glass/util/cc;

    invoke-static {v0}, Lcom/google/glass/util/cc;->d(Lcom/google/glass/util/cc;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/util/cf;->a:Lcom/google/glass/util/cc;

    invoke-static {v0}, Lcom/google/glass/util/cc;->d(Lcom/google/glass/util/cc;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/google/glass/util/cf;->a:Lcom/google/glass/util/cc;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/util/cc;->a(Lcom/google/glass/util/cc;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/glass/util/cc;->b()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "Failed to initialize TextToSpeech."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
