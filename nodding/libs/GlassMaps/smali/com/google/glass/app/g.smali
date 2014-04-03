.class final Lcom/google/glass/app/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/glass/app/GlassApplication;


# direct methods
.method constructor <init>(Lcom/google/glass/app/GlassApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/app/g;->a:Lcom/google/glass/app/GlassApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-static {}, Lcom/google/glass/entity/b;->a()Lcom/google/glass/entity/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/entity/b;->b()V

    return-void
.end method
