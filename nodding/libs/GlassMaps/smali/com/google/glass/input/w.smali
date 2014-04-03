.class final Lcom/google/glass/input/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/glass/input/aa;

.field final synthetic b:Lcom/google/glass/voice/VoiceCommand;

.field final synthetic c:Z

.field final synthetic d:Lcom/google/glass/input/t;


# direct methods
.method constructor <init>(Lcom/google/glass/input/t;Lcom/google/glass/input/aa;Lcom/google/glass/voice/VoiceCommand;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/input/w;->d:Lcom/google/glass/input/t;

    iput-object p2, p0, Lcom/google/glass/input/w;->a:Lcom/google/glass/input/aa;

    iput-object p3, p0, Lcom/google/glass/input/w;->b:Lcom/google/glass/voice/VoiceCommand;

    iput-boolean p4, p0, Lcom/google/glass/input/w;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/input/w;->a:Lcom/google/glass/input/aa;

    iget-object v1, p0, Lcom/google/glass/input/w;->b:Lcom/google/glass/voice/VoiceCommand;

    iget-boolean v2, p0, Lcom/google/glass/input/w;->c:Z

    invoke-interface {v0, v1, v2}, Lcom/google/glass/input/aa;->a(Lcom/google/glass/voice/VoiceCommand;Z)V

    return-void
.end method
