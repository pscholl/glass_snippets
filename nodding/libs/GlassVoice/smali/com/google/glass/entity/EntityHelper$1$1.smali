.class Lcom/google/glass/entity/EntityHelper$1$1;
.super Ljava/lang/Object;
.source "EntityHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/entity/EntityHelper$1;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/entity/EntityHelper$1;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/EntityHelper$1;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/google/glass/entity/EntityHelper$1$1;->this$1:Lcom/google/glass/entity/EntityHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/glass/entity/EntityHelper$1$1;->this$1:Lcom/google/glass/entity/EntityHelper$1;

    iget-object v0, v0, Lcom/google/glass/entity/EntityHelper$1;->this$0:Lcom/google/glass/entity/EntityHelper;

    iget-object v1, p0, Lcom/google/glass/entity/EntityHelper$1$1;->this$1:Lcom/google/glass/entity/EntityHelper$1;

    iget-object v1, v1, Lcom/google/glass/entity/EntityHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/entity/EntityHelper;->loadSelfEntity(Landroid/content/Context;)V

    .line 229
    return-void
.end method
