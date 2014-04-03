.class final Lcom/google/glass/app/b;
.super Lcom/google/glass/util/ca;


# instance fields
.field final synthetic a:Lcom/google/glass/app/GlassActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/app/GlassActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/app/b;->a:Lcom/google/glass/app/GlassActivity;

    invoke-direct {p0}, Lcom/google/glass/util/ca;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/google/glass/app/b;->a:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassActivity;->finish()V

    return-void
.end method
