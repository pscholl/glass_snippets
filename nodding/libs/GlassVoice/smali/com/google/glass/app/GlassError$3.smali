.class synthetic Lcom/google/glass/app/GlassError$3;
.super Ljava/lang/Object;
.source "GlassError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/app/GlassError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$glass$app$GlassError$OnConfirmAction:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 207
    invoke-static {}, Lcom/google/glass/app/GlassError$OnConfirmAction;->values()[Lcom/google/glass/app/GlassError$OnConfirmAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/glass/app/GlassError$3;->$SwitchMap$com$google$glass$app$GlassError$OnConfirmAction:[I

    :try_start_0
    sget-object v0, Lcom/google/glass/app/GlassError$3;->$SwitchMap$com$google$glass$app$GlassError$OnConfirmAction:[I

    sget-object v1, Lcom/google/glass/app/GlassError$OnConfirmAction;->GO_TO_SETTINGS:Lcom/google/glass/app/GlassError$OnConfirmAction;

    invoke-virtual {v1}, Lcom/google/glass/app/GlassError$OnConfirmAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
