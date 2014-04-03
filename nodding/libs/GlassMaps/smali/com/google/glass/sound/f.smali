.class final Lcom/google/glass/sound/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/glass/sound/g;

.field final synthetic b:Lcom/google/glass/sound/SoundManager$SoundId;

.field final synthetic c:I

.field final synthetic d:Lcom/google/glass/sound/SoundManager;


# direct methods
.method constructor <init>(Lcom/google/glass/sound/SoundManager;Lcom/google/glass/sound/g;Lcom/google/glass/sound/SoundManager$SoundId;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/sound/f;->d:Lcom/google/glass/sound/SoundManager;

    iput-object p2, p0, Lcom/google/glass/sound/f;->a:Lcom/google/glass/sound/g;

    iput-object p3, p0, Lcom/google/glass/sound/f;->b:Lcom/google/glass/sound/SoundManager$SoundId;

    iput p4, p0, Lcom/google/glass/sound/f;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/glass/sound/f;->a:Lcom/google/glass/sound/g;

    iget-object v1, p0, Lcom/google/glass/sound/f;->b:Lcom/google/glass/sound/SoundManager$SoundId;

    iget v2, p0, Lcom/google/glass/sound/f;->c:I

    invoke-interface {v0, v1, v2}, Lcom/google/glass/sound/g;->a(Lcom/google/glass/sound/SoundManager$SoundId;I)V

    return-void
.end method
