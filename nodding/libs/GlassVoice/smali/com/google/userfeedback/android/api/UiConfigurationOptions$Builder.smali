.class public Lcom/google/userfeedback/android/api/UiConfigurationOptions$Builder;
.super Ljava/lang/Object;
.source "UiConfigurationOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/userfeedback/android/api/UiConfigurationOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private backgroundColor:I

.field private headerBackgroundResourceId:I

.field private sectionHeaderBackgroundResourceId:I

.field private sectionHeaderFontColor:I

.field private shouldHideTitleBar:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v0, p0, Lcom/google/userfeedback/android/api/UiConfigurationOptions$Builder;->shouldHideTitleBar:Z

    .line 26
    iput v0, p0, Lcom/google/userfeedback/android/api/UiConfigurationOptions$Builder;->headerBackgroundResourceId:I

    .line 27
    iput v0, p0, Lcom/google/userfeedback/android/api/UiConfigurationOptions$Builder;->sectionHeaderBackgroundResourceId:I

    .line 28
    iput v0, p0, Lcom/google/userfeedback/android/api/UiConfigurationOptions$Builder;->sectionHeaderFontColor:I

    .line 29
    iput v0, p0, Lcom/google/userfeedback/android/api/UiConfigurationOptions$Builder;->backgroundColor:I

    return-void
.end method


# virtual methods
.method public build()Lcom/google/userfeedback/android/api/UiConfigurationOptions;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/google/userfeedback/android/api/UiConfigurationOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/userfeedback/android/api/UiConfigurationOptions;-><init>(Lcom/google/userfeedback/android/api/UiConfigurationOptions$1;)V

    .line 58
    .local v0, config:Lcom/google/userfeedback/android/api/UiConfigurationOptions;
    iget-boolean v1, p0, Lcom/google/userfeedback/android/api/UiConfigurationOptions$Builder;->shouldHideTitleBar:Z

    #calls: Lcom/google/userfeedback/android/api/UiConfigurationOptions;->setHideTitleBar(Z)V
    invoke-static {v0, v1}, Lcom/google/userfeedback/android/api/UiConfigurationOptions;->access$100(Lcom/google/userfeedback/android/api/UiConfigurationOptions;Z)V

    .line 59
    iget v1, p0, Lcom/google/userfeedback/android/api/UiConfigurationOptions$Builder;->headerBackgroundResourceId:I

    #calls: Lcom/google/userfeedback/android/api/UiConfigurationOptions;->setHeaderBackgroundResourceId(I)V
    invoke-static {v0, v1}, Lcom/google/userfeedback/android/api/UiConfigurationOptions;->access$200(Lcom/google/userfeedback/android/api/UiConfigurationOptions;I)V

    .line 60
    iget v1, p0, Lcom/google/userfeedback/android/api/UiConfigurationOptions$Builder;->sectionHeaderBackgroundResourceId:I

    #calls: Lcom/google/userfeedback/android/api/UiConfigurationOptions;->setSectionHeaderBackgroundResourceId(I)V
    invoke-static {v0, v1}, Lcom/google/userfeedback/android/api/UiConfigurationOptions;->access$300(Lcom/google/userfeedback/android/api/UiConfigurationOptions;I)V

    .line 61
    iget v1, p0, Lcom/google/userfeedback/android/api/UiConfigurationOptions$Builder;->sectionHeaderFontColor:I

    #calls: Lcom/google/userfeedback/android/api/UiConfigurationOptions;->setSectionHeaderFontColor(I)V
    invoke-static {v0, v1}, Lcom/google/userfeedback/android/api/UiConfigurationOptions;->access$400(Lcom/google/userfeedback/android/api/UiConfigurationOptions;I)V

    .line 62
    iget v1, p0, Lcom/google/userfeedback/android/api/UiConfigurationOptions$Builder;->backgroundColor:I

    #calls: Lcom/google/userfeedback/android/api/UiConfigurationOptions;->setBackgroundColor(I)V
    invoke-static {v0, v1}, Lcom/google/userfeedback/android/api/UiConfigurationOptions;->access$500(Lcom/google/userfeedback/android/api/UiConfigurationOptions;I)V

    .line 63
    return-object v0
.end method

.method public hideTitleBar(Z)Lcom/google/userfeedback/android/api/UiConfigurationOptions$Builder;
    .locals 0
    .parameter "shouldHideTitleBar"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/google/userfeedback/android/api/UiConfigurationOptions$Builder;->shouldHideTitleBar:Z

    .line 33
    return-object p0
.end method

.method public setBackgroundColor(I)Lcom/google/userfeedback/android/api/UiConfigurationOptions$Builder;
    .locals 0
    .parameter "resourceId"

    .prologue
    .line 47
    iput p1, p0, Lcom/google/userfeedback/android/api/UiConfigurationOptions$Builder;->backgroundColor:I

    .line 48
    return-object p0
.end method

.method public setHeaderBackground(I)Lcom/google/userfeedback/android/api/UiConfigurationOptions$Builder;
    .locals 0
    .parameter "resourceId"

    .prologue
    .line 37
    iput p1, p0, Lcom/google/userfeedback/android/api/UiConfigurationOptions$Builder;->headerBackgroundResourceId:I

    .line 38
    return-object p0
.end method

.method public setSectionHeaderBackground(I)Lcom/google/userfeedback/android/api/UiConfigurationOptions$Builder;
    .locals 0
    .parameter "resourceId"

    .prologue
    .line 42
    iput p1, p0, Lcom/google/userfeedback/android/api/UiConfigurationOptions$Builder;->sectionHeaderBackgroundResourceId:I

    .line 43
    return-object p0
.end method

.method public setSectionHeaderFontColor(I)Lcom/google/userfeedback/android/api/UiConfigurationOptions$Builder;
    .locals 0
    .parameter "resourceId"

    .prologue
    .line 52
    iput p1, p0, Lcom/google/userfeedback/android/api/UiConfigurationOptions$Builder;->sectionHeaderFontColor:I

    .line 53
    return-object p0
.end method
