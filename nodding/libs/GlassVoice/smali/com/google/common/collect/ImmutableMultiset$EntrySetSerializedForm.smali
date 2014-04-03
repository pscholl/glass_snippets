.class Lcom/google/common/collect/ImmutableMultiset$EntrySetSerializedForm;
.super Ljava/lang/Object;
.source "ImmutableMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntrySetSerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final multiset:Lcom/google/common/collect/ImmutableMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMultiset;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 422
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset$EntrySetSerializedForm;,"Lcom/google/common/collect/ImmutableMultiset$EntrySetSerializedForm<TE;>;"
    .local p1, multiset:Lcom/google/common/collect/ImmutableMultiset;,"Lcom/google/common/collect/ImmutableMultiset<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySetSerializedForm;->multiset:Lcom/google/common/collect/ImmutableMultiset;

    .line 424
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 427
    .local p0, this:Lcom/google/common/collect/ImmutableMultiset$EntrySetSerializedForm;,"Lcom/google/common/collect/ImmutableMultiset$EntrySetSerializedForm<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$EntrySetSerializedForm;->multiset:Lcom/google/common/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultiset;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
