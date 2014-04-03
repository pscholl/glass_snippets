.class final Lcom/google/glass/voice/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/glass/voice/BaseVoiceInputActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/BaseVoiceInputActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/voice/e;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/voice/e;->a:Lcom/google/glass/voice/BaseVoiceInputActivity;

    invoke-static {v0}, Lcom/google/glass/voice/BaseVoiceInputActivity;->j(Lcom/google/glass/voice/BaseVoiceInputActivity;)Lcom/google/glass/voice/AudioInputRelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/AudioInputRelativeLayout;->b()V

    return-void
.end method
