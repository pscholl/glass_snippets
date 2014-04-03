.class final Lcom/google/glass/util/cg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/speech/tts/UtteranceProgressListener;

.field final synthetic c:Lcom/google/glass/util/cc;


# direct methods
.method constructor <init>(Lcom/google/glass/util/cc;Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/util/cg;->c:Lcom/google/glass/util/cc;

    iput-object p2, p0, Lcom/google/glass/util/cg;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/glass/util/cg;->b:Landroid/speech/tts/UtteranceProgressListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/util/cg;->c:Lcom/google/glass/util/cc;

    iget-object v1, p0, Lcom/google/glass/util/cg;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/util/cg;->b:Landroid/speech/tts/UtteranceProgressListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/cc;->a(Ljava/lang/String;Landroid/speech/tts/UtteranceProgressListener;)V

    return-void
.end method
