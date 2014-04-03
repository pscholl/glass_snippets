.class public final Lcom/google/glass/app/GlassError;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/glass/logging/i;


# instance fields
.field private b:I

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Lcom/google/glass/app/GlassError$OnConfirmAction;

.field private g:I

.field private h:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/app/GlassError;->a:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/google/glass/d/e;->ic_exclamation_big:I

    iput v0, p0, Lcom/google/glass/app/GlassError;->g:I

    return-void
.end method

.method private static a(Landroid/app/Activity;)Lcom/google/glass/sound/SoundManager;
    .locals 1

    invoke-static {p0}, Lcom/google/glass/app/GlassApplication;->a(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->a()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;)Ljava/lang/Runnable;
    .locals 1

    invoke-direct {p0}, Lcom/google/glass/app/GlassError;->g()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/glass/app/GlassError;->g()Ljava/lang/Runnable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/glass/app/GlassError;->e()Lcom/google/glass/app/GlassError$OnConfirmAction;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/glass/app/GlassError;->a(Lcom/google/glass/app/GlassError$OnConfirmAction;Landroid/content/Context;)Ljava/lang/Runnable;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/google/glass/app/GlassError$OnConfirmAction;Landroid/content/Context;)Ljava/lang/Runnable;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/google/glass/app/j;->a:[I

    invoke-virtual {p1}, Lcom/google/glass/app/GlassError$OnConfirmAction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/google/glass/app/GlassError;->a:Lcom/google/glass/logging/i;

    const-string v2, "Unexpected onConfirmAction: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/google/glass/app/i;

    invoke-direct {v0, p0, p2}, Lcom/google/glass/app/i;-><init>(Lcom/google/glass/app/GlassError;Landroid/content/Context;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private b()I
    .locals 1

    iget v0, p0, Lcom/google/glass/app/GlassError;->b:I

    return v0
.end method

.method private c()I
    .locals 1

    iget v0, p0, Lcom/google/glass/app/GlassError;->c:I

    return v0
.end method

.method private d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/app/GlassError;->e:Z

    return v0
.end method

.method private e()Lcom/google/glass/app/GlassError$OnConfirmAction;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/app/GlassError;->f:Lcom/google/glass/app/GlassError$OnConfirmAction;

    return-object v0
.end method

.method private f()I
    .locals 1

    iget v0, p0, Lcom/google/glass/app/GlassError;->g:I

    return v0
.end method

.method private g()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/app/GlassError;->h:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/google/glass/app/GlassError;
    .locals 0

    iput p1, p0, Lcom/google/glass/app/GlassError;->b:I

    return-object p0
.end method

.method public final a(Lcom/google/glass/app/GlassError$OnConfirmAction;)Lcom/google/glass/app/GlassError;
    .locals 0

    iput-object p1, p0, Lcom/google/glass/app/GlassError;->f:Lcom/google/glass/app/GlassError$OnConfirmAction;

    return-object p0
.end method

.method public final a(Ljava/lang/Runnable;)Lcom/google/glass/app/GlassError;
    .locals 0

    iput-object p1, p0, Lcom/google/glass/app/GlassError;->h:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final a(Z)Lcom/google/glass/app/GlassError;
    .locals 0

    iput-boolean p1, p0, Lcom/google/glass/app/GlassError;->d:Z

    return-object p0
.end method

.method public final a(Lcom/google/glass/app/GlassActivity;)V
    .locals 7

    const/4 v6, 0x1

    invoke-static {p1}, Lcom/google/glass/app/GlassError;->a(Landroid/app/Activity;)Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/glass/app/GlassError;->c()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/google/glass/app/GlassError;->a(Landroid/content/Context;)Ljava/lang/Runnable;

    move-result-object v2

    new-instance v3, Lcom/google/glass/widget/p;

    invoke-direct {v3, p1, v0}, Lcom/google/glass/widget/p;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    invoke-virtual {v3, v6}, Lcom/google/glass/widget/p;->d(Z)Lcom/google/glass/widget/p;

    move-result-object v4

    invoke-direct {p0}, Lcom/google/glass/app/GlassError;->d()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/glass/widget/p;->a(Z)Lcom/google/glass/widget/p;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/google/glass/widget/p;->b(Z)Lcom/google/glass/widget/p;

    move-result-object v4

    invoke-direct {p0}, Lcom/google/glass/app/GlassError;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/glass/widget/p;->a(I)Lcom/google/glass/widget/p;

    move-result-object v4

    invoke-direct {p0}, Lcom/google/glass/app/GlassError;->f()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/glass/widget/p;->c(I)Lcom/google/glass/widget/p;

    move-result-object v4

    sget-object v5, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v4, v5}, Lcom/google/glass/widget/p;->a(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/p;

    move-result-object v4

    new-instance v5, Lcom/google/glass/app/h;

    invoke-direct {v5, p0, p1, v2, v0}, Lcom/google/glass/app/h;-><init>(Lcom/google/glass/app/GlassError;Lcom/google/glass/app/GlassActivity;Ljava/lang/Runnable;Lcom/google/glass/sound/SoundManager;)V

    invoke-virtual {v4, v5}, Lcom/google/glass/widget/p;->a(Lcom/google/glass/widget/q;)Lcom/google/glass/widget/p;

    if-eqz v1, :cond_0

    invoke-virtual {v3, v1}, Lcom/google/glass/widget/p;->b(I)Lcom/google/glass/widget/p;

    :cond_0
    sget-object v0, Lcom/google/glass/app/GlassError;->a:Lcom/google/glass/logging/i;

    const-string v1, "Showing error: %s"

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/google/glass/app/GlassError;->b()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/google/glass/app/GlassActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/google/glass/widget/p;->a()Lcom/google/glass/widget/n;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/glass/app/GlassActivity;->b(Lcom/google/glass/widget/n;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/app/GlassError;->d:Z

    return v0
.end method

.method public final b(I)Lcom/google/glass/app/GlassError;
    .locals 0

    iput p1, p0, Lcom/google/glass/app/GlassError;->c:I

    return-object p0
.end method

.method public final b(Z)Lcom/google/glass/app/GlassError;
    .locals 0

    iput-boolean p1, p0, Lcom/google/glass/app/GlassError;->e:Z

    return-object p0
.end method

.method public final c(I)Lcom/google/glass/app/GlassError;
    .locals 0

    iput p1, p0, Lcom/google/glass/app/GlassError;->g:I

    return-object p0
.end method
