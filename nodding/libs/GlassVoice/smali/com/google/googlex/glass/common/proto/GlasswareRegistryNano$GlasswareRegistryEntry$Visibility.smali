.class public final Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry$Visibility;
.super Ljava/lang/Object;
.source "GlasswareRegistryNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Visibility"
.end annotation


# static fields
.field public static final CONFIDENTIAL:I = 0x1

.field public static final HIDDEN:I = 0x3

.field public static final HIDDEN_WHEN_DISABLED:I = 0x2

.field public static final PUBLIC:I = 0x0

.field public static final TEAM_ONLY:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;


# direct methods
.method public constructor <init>(Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry$Visibility;->this$0:Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
