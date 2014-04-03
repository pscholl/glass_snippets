.class Lcom/google/android/speech/embedded/Greco3DataManager$3;
.super Landroid/os/AsyncTask;
.source "Greco3DataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/speech/embedded/Greco3DataManager;->deleteLanguage(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/speech/embedded/Greco3DataManager;

.field final synthetic val$postDelete:Ljava/lang/Runnable;

.field final synthetic val$resource:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;


# direct methods
.method constructor <init>(Lcom/google/android/speech/embedded/Greco3DataManager;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lcom/google/android/speech/embedded/Greco3DataManager$3;->this$0:Lcom/google/android/speech/embedded/Greco3DataManager;

    iput-object p2, p0, Lcom/google/android/speech/embedded/Greco3DataManager$3;->val$resource:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    iput-object p3, p0, Lcom/google/android/speech/embedded/Greco3DataManager$3;->val$postDelete:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 529
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/speech/embedded/Greco3DataManager$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "voids"

    .prologue
    .line 532
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3DataManager$3;->this$0:Lcom/google/android/speech/embedded/Greco3DataManager;

    iget-object v1, p0, Lcom/google/android/speech/embedded/Greco3DataManager$3;->val$resource:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    #calls: Lcom/google/android/speech/embedded/Greco3DataManager;->doLanguageDelete(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;)V
    invoke-static {v0, v1}, Lcom/google/android/speech/embedded/Greco3DataManager;->access$200(Lcom/google/android/speech/embedded/Greco3DataManager;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;)V

    .line 533
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 529
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/speech/embedded/Greco3DataManager$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 538
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3DataManager$3;->val$postDelete:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3DataManager$3;->val$postDelete:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 541
    :cond_0
    return-void
.end method
