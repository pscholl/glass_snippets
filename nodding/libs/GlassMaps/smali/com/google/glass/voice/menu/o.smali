.class final Lcom/google/glass/voice/menu/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/glass/voice/menu/VoiceMenuEnvironment;

.field final synthetic b:Z

.field final synthetic c:Lcom/google/glass/voice/menu/n;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/n;Lcom/google/glass/voice/menu/VoiceMenuEnvironment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/voice/menu/o;->c:Lcom/google/glass/voice/menu/n;

    iput-object p2, p0, Lcom/google/glass/voice/menu/o;->a:Lcom/google/glass/voice/menu/VoiceMenuEnvironment;

    iput-boolean p3, p0, Lcom/google/glass/voice/menu/o;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/voice/menu/o;->c:Lcom/google/glass/voice/menu/n;

    iget-object v1, p0, Lcom/google/glass/voice/menu/o;->a:Lcom/google/glass/voice/menu/VoiceMenuEnvironment;

    iget-boolean v2, p0, Lcom/google/glass/voice/menu/o;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/voice/menu/n;->a(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;Z)V

    return-void
.end method
