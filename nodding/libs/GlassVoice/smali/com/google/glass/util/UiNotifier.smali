.class public Lcom/google/glass/util/UiNotifier;
.super Ljava/lang/Object;
.source "UiNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/UiNotifier$1;,
        Lcom/google/glass/util/UiNotifier$Listener;,
        Lcom/google/glass/util/UiNotifier$Mode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final hiddenListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/glass/util/UiNotifier$Listener",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final shownListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/glass/util/UiNotifier$Listener",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    .local p0, this:Lcom/google/glass/util/UiNotifier;,"Lcom/google/glass/util/UiNotifier<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/UiNotifier;->shownListeners:Ljava/util/LinkedList;

    .line 17
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/UiNotifier;->hiddenListeners:Ljava/util/LinkedList;

    .line 76
    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/glass/util/UiNotifier$Listener;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/util/UiNotifier$Listener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, this:Lcom/google/glass/util/UiNotifier;,"Lcom/google/glass/util/UiNotifier<TT;>;"
    .local p1, listener:Lcom/google/glass/util/UiNotifier$Listener;,"Lcom/google/glass/util/UiNotifier$Listener<TT;>;"
    invoke-interface {p1}, Lcom/google/glass/util/UiNotifier$Listener;->isConsumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Do not reuse listeners"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    sget-object v0, Lcom/google/glass/util/UiNotifier$1;->$SwitchMap$com$google$glass$util$UiNotifier$Mode:[I

    invoke-interface {p1}, Lcom/google/glass/util/UiNotifier$Listener;->getMode()Lcom/google/glass/util/UiNotifier$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/UiNotifier$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 37
    :goto_0
    return-void

    .line 31
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/util/UiNotifier;->shownListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/util/UiNotifier;->hiddenListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 71
    .local p0, this:Lcom/google/glass/util/UiNotifier;,"Lcom/google/glass/util/UiNotifier<TT;>;"
    iget-object v0, p0, Lcom/google/glass/util/UiNotifier;->shownListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 72
    iget-object v0, p0, Lcom/google/glass/util/UiNotifier;->hiddenListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 73
    return-void
.end method

.method public onHidden(Ljava/lang/Object;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, this:Lcom/google/glass/util/UiNotifier;,"Lcom/google/glass/util/UiNotifier<TT;>;"
    .local p1, newlyHidden:Ljava/lang/Object;,"TT;"
    iget-object v1, p0, Lcom/google/glass/util/UiNotifier;->hiddenListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/google/glass/util/UiNotifier;->hiddenListeners:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/UiNotifier$Listener;

    .line 67
    .local v0, listener:Lcom/google/glass/util/UiNotifier$Listener;,"Lcom/google/glass/util/UiNotifier$Listener<TT;>;"
    invoke-interface {v0, p1}, Lcom/google/glass/util/UiNotifier$Listener;->onHidden(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onShown(Ljava/lang/Object;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, this:Lcom/google/glass/util/UiNotifier;,"Lcom/google/glass/util/UiNotifier<TT;>;"
    .local p1, newlyShown:Ljava/lang/Object;,"TT;"
    iget-object v1, p0, Lcom/google/glass/util/UiNotifier;->shownListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/google/glass/util/UiNotifier;->shownListeners:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/UiNotifier$Listener;

    .line 57
    .local v0, listener:Lcom/google/glass/util/UiNotifier$Listener;,"Lcom/google/glass/util/UiNotifier$Listener<TT;>;"
    invoke-interface {v0, p1}, Lcom/google/glass/util/UiNotifier$Listener;->onShown(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public removeListener(Lcom/google/glass/util/UiNotifier$Listener;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/util/UiNotifier$Listener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, this:Lcom/google/glass/util/UiNotifier;,"Lcom/google/glass/util/UiNotifier<TT;>;"
    .local p1, listener:Lcom/google/glass/util/UiNotifier$Listener;,"Lcom/google/glass/util/UiNotifier$Listener<TT;>;"
    sget-object v0, Lcom/google/glass/util/UiNotifier$1;->$SwitchMap$com$google$glass$util$UiNotifier$Mode:[I

    invoke-interface {p1}, Lcom/google/glass/util/UiNotifier$Listener;->getMode()Lcom/google/glass/util/UiNotifier$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/UiNotifier$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 48
    :goto_0
    return-void

    .line 42
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/util/UiNotifier;->shownListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/util/UiNotifier;->hiddenListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
