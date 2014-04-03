.class public interface abstract Lcom/x/google/masf/services/resume/ExtendableRequest$Listener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/google/masf/services/resume/ExtendableRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract requestCancelled(Lcom/x/google/masf/services/resume/ExtendableRequest;)V
.end method

.method public abstract requestCompleted(Lcom/x/google/masf/services/resume/ExtendableRequest;Lcom/x/google/masf/protocol/Response;)V
.end method

.method public abstract requestFailed(Lcom/x/google/masf/services/resume/ExtendableRequest;Ljava/lang/Exception;)V
.end method

.method public abstract requestProgress(Lcom/x/google/masf/services/resume/ExtendableRequest;JJ)V
.end method
