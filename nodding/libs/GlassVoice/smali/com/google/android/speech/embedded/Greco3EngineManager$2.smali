.class Lcom/google/android/speech/embedded/Greco3EngineManager$2;
.super Ljava/lang/Object;
.source "Greco3EngineManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/speech/embedded/Greco3EngineManager;->delete(Ljava/io/File;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/speech/embedded/Greco3EngineManager;

.field final synthetic val$force:Z

.field final synthetic val$path:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/google/android/speech/embedded/Greco3EngineManager;Ljava/io/File;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$2;->this$0:Lcom/google/android/speech/embedded/Greco3EngineManager;

    iput-object p2, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$2;->val$path:Ljava/io/File;

    iput-boolean p3, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$2;->val$force:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$2;->this$0:Lcom/google/android/speech/embedded/Greco3EngineManager;

    iget-object v1, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$2;->val$path:Ljava/io/File;

    iget-boolean v2, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$2;->val$force:Z

    #calls: Lcom/google/android/speech/embedded/Greco3EngineManager;->doResourceDelete(Ljava/io/File;Z)V
    invoke-static {v0, v1, v2}, Lcom/google/android/speech/embedded/Greco3EngineManager;->access$100(Lcom/google/android/speech/embedded/Greco3EngineManager;Ljava/io/File;Z)V

    .line 236
    return-void
.end method
