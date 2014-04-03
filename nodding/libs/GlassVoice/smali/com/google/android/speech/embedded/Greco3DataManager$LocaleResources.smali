.class public interface abstract Lcom/google/android/speech/embedded/Greco3DataManager$LocaleResources;
.super Ljava/lang/Object;
.source "Greco3DataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/embedded/Greco3DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LocaleResources"
.end annotation


# virtual methods
.method public abstract getConfigFile(Lcom/google/android/speech/embedded/Greco3Mode;)Ljava/lang/String;
.end method

.method public abstract getGrammarPath(Lcom/google/android/speech/embedded/Greco3Grammar;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLanguageMetadata()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
.end method

.method public abstract getResourcePaths()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isInstalledInSystemPartition()Z
.end method

.method public abstract isUsingDownloadedData()Z
.end method
