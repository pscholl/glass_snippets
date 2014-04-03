.class public interface abstract Lcom/google/common/util/IdGenerator;
.super Ljava/lang/Object;
.source "IdGenerator.java"


# annotations
.annotation build Lcom/google/common/util/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract next()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/util/IdException;
        }
    .end annotation
.end method
