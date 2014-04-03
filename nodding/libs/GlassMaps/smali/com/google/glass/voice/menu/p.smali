.class final Lcom/google/glass/voice/menu/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/glass/sound/g;


# instance fields
.field a:I

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/google/glass/voice/menu/VoiceMenuEnvironment;

.field final synthetic d:Lcom/google/glass/voice/menu/n;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/n;Ljava/util/List;Lcom/google/glass/voice/menu/VoiceMenuEnvironment;)V
    .locals 1

    iput-object p1, p0, Lcom/google/glass/voice/menu/p;->d:Lcom/google/glass/voice/menu/n;

    iput-object p2, p0, Lcom/google/glass/voice/menu/p;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/google/glass/voice/menu/p;->c:Lcom/google/glass/voice/menu/VoiceMenuEnvironment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/voice/menu/p;->a:I

    return-void
.end method

.method private a()V
    .locals 3

    iget v0, p0, Lcom/google/glass/voice/menu/p;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/voice/menu/p;->a:I

    iget v0, p0, Lcom/google/glass/voice/menu/p;->a:I

    iget-object v1, p0, Lcom/google/glass/voice/menu/p;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/menu/p;->c:Lcom/google/glass/voice/menu/VoiceMenuEnvironment;

    iget-object v0, p0, Lcom/google/glass/voice/menu/p;->b:Ljava/util/List;

    iget v2, p0, Lcom/google/glass/voice/menu/p;->a:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-interface {v1, v0, p0}, Lcom/google/glass/voice/menu/VoiceMenuEnvironment;->a(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/g;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/glass/sound/SoundManager$SoundId;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/voice/menu/p;->a()V

    return-void
.end method

.method public final a(Lcom/google/glass/sound/SoundManager$SoundId;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/voice/menu/p;->a()V

    return-void
.end method
