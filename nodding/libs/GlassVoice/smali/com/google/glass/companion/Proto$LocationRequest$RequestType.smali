.class public final Lcom/google/glass/companion/Proto$LocationRequest$RequestType;
.super Ljava/lang/Object;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto$LocationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RequestType"
.end annotation


# static fields
.field public static final START_LISTENING:I = 0x0

.field public static final STOP_LISTENING:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/google/glass/companion/Proto$LocationRequest;


# direct methods
.method public constructor <init>(Lcom/google/glass/companion/Proto$LocationRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 1258
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationRequest$RequestType;->this$0:Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
