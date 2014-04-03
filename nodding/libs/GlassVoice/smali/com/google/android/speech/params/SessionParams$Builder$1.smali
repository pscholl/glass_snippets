.class Lcom/google/android/speech/params/SessionParams$Builder$1;
.super Ljava/lang/Object;
.source "SessionParams.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/speech/params/SessionParams$Builder;->createNewRequestId()Lcom/google/common/base/Supplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/speech/params/SessionParams$Builder;


# direct methods
.method constructor <init>(Lcom/google/android/speech/params/SessionParams$Builder;)V
    .locals 0
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lcom/google/android/speech/params/SessionParams$Builder$1;->this$0:Lcom/google/android/speech/params/SessionParams$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/google/android/speech/params/SessionParams$Builder$1;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    sget-object v0, Lcom/google/android/speech/params/RequestIdGenerator;->INSTANCE:Lcom/google/android/speech/params/RequestIdGenerator;

    invoke-virtual {v0}, Lcom/google/android/speech/params/RequestIdGenerator;->newRequestId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
