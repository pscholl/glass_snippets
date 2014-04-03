.class Lcom/google/android/speech/embedded/Greco3DataManager$1;
.super Ljava/lang/Object;
.source "Greco3DataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/speech/embedded/Greco3DataManager;->updateResourcesLocked(Lcom/google/android/speech/callback/SimpleCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/speech/embedded/Greco3DataManager;


# direct methods
.method constructor <init>(Lcom/google/android/speech/embedded/Greco3DataManager;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/google/android/speech/embedded/Greco3DataManager$1;->this$0:Lcom/google/android/speech/embedded/Greco3DataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3DataManager$1;->this$0:Lcom/google/android/speech/embedded/Greco3DataManager;

    #calls: Lcom/google/android/speech/embedded/Greco3DataManager;->updateResourceListAndNotifyCallback()V
    invoke-static {v0}, Lcom/google/android/speech/embedded/Greco3DataManager;->access$000(Lcom/google/android/speech/embedded/Greco3DataManager;)V

    .line 219
    return-void
.end method
