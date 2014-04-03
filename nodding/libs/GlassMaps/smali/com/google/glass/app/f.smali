.class final Lcom/google/glass/app/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/glass/app/GlassApplication;


# direct methods
.method constructor <init>(Lcom/google/glass/app/GlassApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/app/f;->a:Lcom/google/glass/app/GlassApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/google/glass/entity/p;->a()Lcom/google/glass/entity/p;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/app/f;->a:Lcom/google/glass/app/GlassApplication;

    invoke-virtual {v1}, Lcom/google/glass/app/GlassApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/entity/p;->a(Landroid/content/Context;)V

    return-void
.end method
