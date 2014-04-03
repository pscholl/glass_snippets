.class public final Lcom/google/glass/companion/Proto$Error$ErrorType;
.super Ljava/lang/Object;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto$Error;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ErrorType"
.end annotation


# static fields
.field public static final SMS_GOOGLE_VOICE_NEEDS_UPDATE:I = 0x2

.field public static final SMS_GOOGLE_VOICE_NOT_INSTALLED:I = 0x1

.field public static final TETHERING_ERROR_ON_GLASS:I


# instance fields
.field final synthetic this$0:Lcom/google/glass/companion/Proto$Error;


# direct methods
.method public constructor <init>(Lcom/google/glass/companion/Proto$Error;)V
    .locals 0
    .parameter

    .prologue
    .line 2388
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Error$ErrorType;->this$0:Lcom/google/glass/companion/Proto$Error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
