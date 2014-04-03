.class final Lcom/google/glass/app/q;
.super Lcom/google/glass/voice/menu/a;

# interfaces
.implements Lcom/google/glass/voice/menu/m;


# instance fields
.field final synthetic a:Lcom/google/glass/app/m;


# direct methods
.method public constructor <init>(Lcom/google/glass/app/m;Lcom/google/glass/app/GlassVoiceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/app/q;->a:Lcom/google/glass/app/m;

    invoke-direct {p0, p2}, Lcom/google/glass/voice/menu/a;-><init>(Lcom/google/glass/app/GlassVoiceActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/glass/voice/menu/n;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/app/q;->a:Lcom/google/glass/app/m;

    invoke-static {v0}, Lcom/google/glass/app/m;->a(Lcom/google/glass/app/m;)Lcom/google/glass/voice/menu/VoiceMenu;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/voice/menu/VoiceMenu;->a(Lcom/google/glass/voice/menu/n;Ljava/lang/Runnable;)V

    return-void
.end method
