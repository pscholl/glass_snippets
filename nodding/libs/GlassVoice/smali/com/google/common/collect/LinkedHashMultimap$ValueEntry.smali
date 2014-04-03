.class final Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "LinkedHashMultimap.java"

# interfaces
.implements Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/LinkedHashMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ValueEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMapEntry",
        "<TK;TV;>;",
        "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field nextInValueSetHashRow:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$ValueEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field predecessorInMultimap:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$ValueEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field predecessorInValueSet:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field successorInMultimap:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$ValueEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field successorInValueSet:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field final valueHash:I


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "valueHash"
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I",
            "Lcom/google/common/collect/LinkedHashMultimap$ValueEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    .local p4, nextInValueSetHashRow:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->key:Ljava/lang/Object;

    .line 173
    iput-object p2, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->value:Ljava/lang/Object;

    .line 174
    iput p3, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->valueHash:I

    .line 175
    iput-object p4, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->nextInValueSetHashRow:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 176
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getPredecessorInMultimap()Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$ValueEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->predecessorInMultimap:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    return-object v0
.end method

.method public getPredecessorInValueSet()Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->predecessorInValueSet:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    return-object v0
.end method

.method public getSuccessorInMultimap()Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$ValueEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->successorInMultimap:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    return-object v0
.end method

.method public getSuccessorInValueSet()Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->successorInValueSet:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setPredecessorInMultimap(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$ValueEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    .local p1, multimapPredecessor:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->predecessorInMultimap:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 218
    return-void
.end method

.method public setPredecessorInValueSet(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    .local p1, entry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;,"Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->predecessorInValueSet:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    .line 198
    return-void
.end method

.method public setSuccessorInMultimap(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$ValueEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    .local p1, multimapSuccessor:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->successorInMultimap:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 214
    return-void
.end method

.method public setSuccessorInValueSet(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;,"Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    .local p1, entry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;,"Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->successorInValueSet:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    .line 202
    return-void
.end method
