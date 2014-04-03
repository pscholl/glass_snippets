.class final Lcom/google/glass/logging/d;
.super Lcom/google/glass/widget/s;


# instance fields
.field a:Z

.field final synthetic b:Lcom/google/glass/logging/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/logging/FeedbackActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/logging/d;->b:Lcom/google/glass/logging/FeedbackActivity;

    invoke-direct {p0}, Lcom/google/glass/widget/s;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/glass/logging/d;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/logging/d;->b:Lcom/google/glass/logging/FeedbackActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/logging/FeedbackActivity;->a(Lcom/google/glass/logging/FeedbackActivity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/glass/logging/d;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/logging/d;->b:Lcom/google/glass/logging/FeedbackActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/logging/FeedbackActivity;->a(Lcom/google/glass/logging/FeedbackActivity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/glass/logging/d;->a:Z

    iget-object v0, p0, Lcom/google/glass/logging/d;->b:Lcom/google/glass/logging/FeedbackActivity;

    invoke-static {v0}, Lcom/google/glass/logging/FeedbackActivity;->a(Lcom/google/glass/logging/FeedbackActivity;)Lcom/google/glass/voice/x;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/x;->a(I)V

    iget-object v0, p0, Lcom/google/glass/logging/d;->b:Lcom/google/glass/logging/FeedbackActivity;

    invoke-virtual {v0}, Lcom/google/glass/logging/FeedbackActivity;->l()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->a(Lcom/google/glass/sound/SoundManager$SoundId;)I

    return v2
.end method
