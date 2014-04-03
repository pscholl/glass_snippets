.class Lcom/google/android/speech/embedded/LocaleResourcesImpl$GrammarInfo;
.super Ljava/lang/Object;
.source "LocaleResourcesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/embedded/LocaleResourcesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GrammarInfo"
.end annotation


# instance fields
.field final directory:Ljava/io/File;

.field final grammar:Lcom/google/android/speech/embedded/Greco3Grammar;

.field final metadata:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

.field final revisionName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/speech/embedded/Greco3Grammar;Ljava/lang/String;Ljava/io/File;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;)V
    .locals 0
    .parameter "grammar"
    .parameter "revisionName"
    .parameter "directory"
    .parameter "metaData"

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p1, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl$GrammarInfo;->grammar:Lcom/google/android/speech/embedded/Greco3Grammar;

    .line 265
    iput-object p2, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl$GrammarInfo;->revisionName:Ljava/lang/String;

    .line 266
    iput-object p3, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl$GrammarInfo;->directory:Ljava/io/File;

    .line 267
    iput-object p4, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl$GrammarInfo;->metadata:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .line 268
    return-void
.end method
