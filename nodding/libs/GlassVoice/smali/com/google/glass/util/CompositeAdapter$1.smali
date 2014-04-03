.class Lcom/google/glass/util/CompositeAdapter$1;
.super Landroid/database/DataSetObserver;
.source "CompositeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/CompositeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/CompositeAdapter;


# direct methods
.method constructor <init>(Lcom/google/glass/util/CompositeAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/glass/util/CompositeAdapter$1;->this$0:Lcom/google/glass/util/CompositeAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter$1;->this$0:Lcom/google/glass/util/CompositeAdapter;

    invoke-virtual {v0}, Lcom/google/glass/util/CompositeAdapter;->notifyDataSetChanged()V

    .line 23
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/util/CompositeAdapter$1;->this$0:Lcom/google/glass/util/CompositeAdapter;

    invoke-virtual {v0}, Lcom/google/glass/util/CompositeAdapter;->notifyDataSetInvalidated()V

    .line 28
    return-void
.end method
