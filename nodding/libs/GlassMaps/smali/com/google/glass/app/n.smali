.class final Lcom/google/glass/app/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/google/glass/app/GlassVoiceActivity;

.field final synthetic b:Lcom/google/glass/app/m;


# direct methods
.method constructor <init>(Lcom/google/glass/app/m;Lcom/google/glass/app/GlassVoiceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/app/n;->b:Lcom/google/glass/app/m;

    iput-object p2, p0, Lcom/google/glass/app/n;->a:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/google/glass/app/n;->a:Lcom/google/glass/app/GlassVoiceActivity;

    iget-object v1, p0, Lcom/google/glass/app/n;->b:Lcom/google/glass/app/m;

    invoke-static {v1}, Lcom/google/glass/app/m;->c(Lcom/google/glass/app/m;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassVoiceActivity;->a(Z)V

    return-void
.end method
