.class public interface abstract Lcom/google/android/speech/EngineSelector;
.super Ljava/lang/Object;
.source "EngineSelector.java"


# virtual methods
.method public abstract getEngineList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrimaryEngine()I
.end method

.method public abstract getSecondaryEngine()I
.end method
