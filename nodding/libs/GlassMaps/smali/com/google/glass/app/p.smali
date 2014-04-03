.class final Lcom/google/glass/app/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/glass/voice/VoiceCommand;

.field final synthetic b:Lcom/google/glass/app/o;


# direct methods
.method constructor <init>(Lcom/google/glass/app/o;Lcom/google/glass/voice/VoiceCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/app/p;->b:Lcom/google/glass/app/o;

    iput-object p2, p0, Lcom/google/glass/app/p;->a:Lcom/google/glass/voice/VoiceCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/app/p;->b:Lcom/google/glass/app/o;

    iget-object v0, v0, Lcom/google/glass/app/o;->a:Lcom/google/glass/app/GlassVoiceActivity;

    iget-object v0, p0, Lcom/google/glass/app/p;->a:Lcom/google/glass/voice/VoiceCommand;

    return-void
.end method
