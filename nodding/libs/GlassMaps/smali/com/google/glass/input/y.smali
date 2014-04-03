.class final Lcom/google/glass/input/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/glass/input/aa;


# instance fields
.field private final a:Lcom/google/glass/util/bj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/glass/util/bj;

    invoke-direct {v0, p1}, Lcom/google/glass/util/bj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/input/y;->a:Lcom/google/glass/util/bj;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/glass/voice/VoiceCommand;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/glass/input/y;->a:Lcom/google/glass/util/bj;

    invoke-virtual {v0}, Lcom/google/glass/util/bj;->d()V

    :cond_0
    return-void
.end method
