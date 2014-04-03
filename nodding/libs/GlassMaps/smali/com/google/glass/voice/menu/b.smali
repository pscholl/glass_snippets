.class final Lcom/google/glass/voice/menu/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/glass/app/GlassError;

.field final synthetic b:Lcom/google/glass/voice/menu/a;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/a;Lcom/google/glass/app/GlassError;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/voice/menu/b;->b:Lcom/google/glass/voice/menu/a;

    iput-object p2, p0, Lcom/google/glass/voice/menu/b;->a:Lcom/google/glass/app/GlassError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/voice/menu/b;->a:Lcom/google/glass/app/GlassError;

    iget-object v1, p0, Lcom/google/glass/voice/menu/b;->b:Lcom/google/glass/voice/menu/a;

    invoke-static {v1}, Lcom/google/glass/voice/menu/a;->a(Lcom/google/glass/voice/menu/a;)Lcom/google/glass/app/GlassVoiceActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->a(Lcom/google/glass/app/GlassActivity;)V

    return-void
.end method
