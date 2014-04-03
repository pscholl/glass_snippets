.class public final Lcom/google/glass/companion/Proto$ApiRequest$RequestType;
.super Ljava/lang/Object;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto$ApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RequestType"
.end annotation


# static fields
.field public static final DELETE_TIMELINE_ITEM:I = 0x1

.field public static final INSERT_OR_UPDATE_TIMELINE_ITEM:I


# instance fields
.field final synthetic this$0:Lcom/google/glass/companion/Proto$ApiRequest;


# direct methods
.method public constructor <init>(Lcom/google/glass/companion/Proto$ApiRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 2819
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiRequest$RequestType;->this$0:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
